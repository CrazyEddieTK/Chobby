--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
	return {
		name      = "Analytics Handler",
		desc      = "Handles analytics events",
		author    = "GoogleFrog",
		date      = "20 February 2017",
		license   = "GPL-v2",
		layer     = 0,
		handler   = true,
		enabled   = true,
	}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Vars

local onetimeEvents = {}

local ANALYTICS_EVENT = "analyticsEvent_"
local ANALYTICS_EVENT_ERROR = "analyticsEventError_"

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Widget Interface

local Analytics = {}

function Analytics.SendOnetimeEvent(eventName, value)
	if onetimeEvents[eventName] then
		return
	end
	onetimeEvents[eventName] = true
	--Spring.Echo("DesignEvent", eventName, value)
	if WG.WrapperLoopback then
		WG.WrapperLoopback.GaAddDesignEvent(eventName, value)
	end
end

function Analytics.SendErrorEvent(eventName, severity)
	if onetimeEvents[eventName] then
		return
	end
	severity = severity or "Info"
	--Spring.Echo("ErrorEvent", eventName, severity)
	if WG.WrapperLoopback then
		WG.WrapperLoopback.GaAddErrorEvent(severity, eventName)
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Utilities

local function HandleAnalytics(msg)
	if string.find(msg, ANALYTICS_EVENT) == 1 then
		msg = string.sub(msg, 16)
		local pipe = string.find(msg, "|")
		if pipe then
			Analytics.SendOnetimeEvent(string.sub(msg, 0, pipe - 1), string.sub(msg, pipe + 1))
		else
			Analytics.SendOnetimeEvent(msg)
		end
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Initialize

local function ProcessString(str)
	return string.gsub(string.gsub(str," ","_"),"/","_")
end

function DelayedInitialize()
	local function OnBattleStartSingleplayer()
		Analytics.SendOnetimeEvent("lobby:singleplayer:game_loading")
	end
	local function OnBattleStartMultiplayer()
		Analytics.SendOnetimeEvent("lobby:multiplayer:game_loading")
	end
	
	WG.LibLobby.lobby:AddListener("OnBattleAboutToStart", OnBattleStartSingleplayer)
	WG.LibLobby.localLobby:AddListener("OnBattleAboutToStart", OnBattleStartMultiplayer)
	
	Analytics.SendOnetimeEvent("lobby:started")
	if Platform and Platform.glVersionShort and type(Platform.glVersionShort) == "string" then
		Analytics.SendOnetimeEvent("graphics:openglVersion:" .. Platform.glVersionShort)
	else
		Analytics.SendOnetimeEvent("graphics:openglVersion:notFound")
	end
	
	Analytics.SendOnetimeEvent("graphics:gpu:" .. ProcessString(tostring((Platform and Platform.gpu) or "unknown") or "unknown"))
	Analytics.SendOnetimeEvent("graphics:glRenderer:" .. ProcessString(tostring((Platform and Platform.glRenderer) or "unknown") or "unknown"))
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Widget Interface

function widget:RecvLuaMsg(msg)
	if HandleAnalytics(msg) then
		return
	end
end

function widget:Initialize() 
	WG.Analytics = Analytics
	WG.Delay(DelayedInitialize, 1)
end

function widget:GetConfigData()
	return onetimeEvents
end

function widget:SetConfigData(data)
	onetimeEvents = data
end
