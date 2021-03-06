--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities)
	
	local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	
	local planetData = {
		name = "Phisnet-3617",
		startingPlanet = false,
		mapDisplay = {
			x = 0.215,
			y = 0.545,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Asteroid",
			radius = "220 km",
			primary = "None",
			primaryType = "N/A",
			milRating = 1,
			text = [[This isolated asteroid is being used by the enemy as an observation and command post. Use Shieldbots to conquer the rough terrain, then bring your Commander to the Interception Network structure to download important strategic data.]]
		},
		gameConfig = {
			missionStartscript = false,
			mapName = "Apophis v2_3",
			playerConfig = {
				startX = 2300,
				startZ = 5900,
				allyTeam = 0,
				facplop = false,
				commanderParameters = {
					facplop = false,
					victoryAtLocation = {
						x = 5952,
						z = 2896,
						radius = 200,
						objectiveID = 1,
					},
					defeatIfDestroyedObjectiveID = 3,
				},
				extraUnlocks = {
					"factoryshield",
					"shieldcon",
					"shieldraid",
					"shieldassault",
					"shieldriot",
				},
				startUnits = {
					{
						name = "factoryshield",
						x = 2400,
						z = 5712,
						facing = 2,
					},
					{
						name = "staticmex",
						x = 2520,
						z = 5992,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 2856,
						z = 5976,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 2696,
						z = 5704,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 2632,
						z = 5960,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 2760,
						z = 5896,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 2648,
						z = 5784,
						facing = 0,
					},
					{
						name = "shieldcon",
						x = 2536,
						z = 5624,
						facing = 2,
					},
					{
						name = "shieldraid",
						x = 2444,
						z = 5555,
						facing = 2,
					},
					{
						name = "shieldraid",
						x = 2493,
						z = 5511,
						facing = 2,
					},
					{
						name = "shieldraid",
						x = 2578,
						z = 5515,
						facing = 2,
					},
					{
						name = "shieldraid",
						x = 2627,
						z = 5570,
						facing = 0,
					},
					{
						name = "staticradar",
						x = 2912,
						z = 5776,
						facing = 0,
					},
					{
						name = "turretmissile",
						x = 3504,
						z = 5808,
						facing = 0,
					},
					{
						name = "turretmissile",
						x = 3392,
						z = 5648,
						facing = 0,
					},
				}
			},
			aiConfig = {
				{
					startX = 4000,
					startZ = 2000,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					humanName = "Farseers",
					commanderParameters = {
						facplop = false,
						bonusObjectiveID = 3,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"staticradar",
						"energysolar",
						"cloakraid",
						"cloakriot",
					},
					difficultyDependantUnlocks = {
						[2] = {"cloakassault"},
						[3] = {"cloakcon"},
					},
					commanderLevel = 2,
					commander = {
						name = "Panopticon",
						chassis = "engineer",
						decorations = {
						  icon_overhead = { image = "UW" }
						},
						modules = { 
							"commweapon_lparticlebeam",
							"module_autorepair",
							"module_radarnet",
							"module_adv_targeting",
						}
					},
					startUnits = {
						{
							name = "factorycloak",
							x = 3864,
							z = 1656,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4056,
							z = 1848,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4280,
							z = 1656,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 4392,
							z = 1912,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4344,
							z = 1784,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 4168,
							z = 1768,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 1600,
							z = 3696,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 1888,
							z = 3456,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5760,
							z = 2832,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 6128,
							z = 2976,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 2576,
							z = 2992,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 3184,
							z = 2320,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 4080,
							z = 2256,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 4992,
							z = 2496,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 3440,
							z = 1968,
							facing = 0,
						},
					}
				},
			},
			neutralUnits = {
				{
				name = "pw_interception",
				x = 5952,
				z = 2896,
				facing = 0,
				invincible = true,
				ignoredByAI = true,
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = true,
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Find the Interception Network, then bring your Commander to it",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Make six Thugs
					satisfyOnce = true,
					countRemovedUnits = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 6,
					unitTypes = {
						"shieldassault",
					},
					image = planetUtilities.ICON_DIR .. "shieldassault.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build six Thugs",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { 
					victoryByTime = 480,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 8:00",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = { -- Kill enemy commander
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_MOST,
					targetNumber = 0,
					-- See bonusObjectiveID in units table
					image = planetUtilities.ICON_DIR .. "engineer.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Kill the enemy Commander",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"factoryshield",
				"shieldcon",
				"shieldraid",
				"shieldassault",
				"shieldriot",
			},
			modules = {
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet
