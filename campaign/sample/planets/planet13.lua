--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities)
	
	local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	
	local planetData = {
		name = "Blank",
		startingPlanet = false,
		mapDisplay = {
			x = 0.28,
			y = 0.41,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Terran",
			radius = "6550 km",
			primary = "Blank",
			primaryType = "G8V",
			milRating = 1,
			text = [[You're outnumbered on this small battlefield, but your Felon shield bots will allow you to fight efficiently and minimise losses. Expand aggressively and reclaim the nearby rocks and trees to build up your army and economy, then push forward and destroy both enemies.]]
		},
		gameConfig = {
			missionStartscript = false,
			mapName = "Altair_Crossing_v3",
			playerConfig = {
				startX = 3600,
				startZ = 1950,
				allyTeam = 0,
				facplop = false,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 2,
				},
				extraUnlocks = {
					"factoryshield",
					"shieldcon",
					"shieldfelon",
					"staticstorage",
				},
				startUnits = {
					{
						name = "staticmex",
						x = 3640,
						z = 2056,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 3800,
						z = 1848,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 3864,
						z = 2136,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 3704,
						z = 1928,
						facing = 0,
					},
					{
						name = "energysolar",
						x = 3736,
						z = 2104,
						facing = 0,
					},
					{
						name = "staticstorage",
						x = 3752,
						z = 2008,
						facing = 0,
					},
					{
						name = "factoryshield",
						x = 3472,
						z = 2016,
						facing = 3,
					},
					{
						name = "shieldcon",
						x = 3430,
						z = 1900,
						facing = 3,
					},
					{
						name = "shieldcon",
						x = 3430,
						z = 1700,
						facing = 3,
					},
					{
						name = "shieldfelon",
						x = 3500,
						z = 1800,
						facing = 3,
					},
					{
						name = "turretlaser",
						x = 3552,
						z = 2304,
						facing = 3,
					},
					{
						name = "turretlaser",
						x = 3568,
						z = 1584,
						facing = 3,
					},
				}
			},
			aiConfig = {
				{
					startX = 550,
					startZ = 750,
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					humanName = "Nohow",
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"cloakcon",
						"cloakraid",
						"cloakskirm",
						"cloakriot",
						"cloakassault",
						"cloakaa",
						"turretlaser",
						"turretmissile",
					},
					difficultyDependantUnlocks = {
						[2] = {"turretriot"},
						[3] = {"cloaksnipe"}
					},
					commanderLevel = 2,
					commander = {
						name = "Tweedledum",
						chassis = "engineer",
						decorations = {
						  "skin_support_dark",
						  icon_overhead = { image = "UW" }
						},
						modules = { }
					},
					startUnits = {
						{
							name = "staticmex",
							x = 552,
							z = 872,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 376,
							z = 968,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "energysolar",
							x = 456,
							z = 904,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 88,
							z = 152,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "energywind",
							x = 136,
							z = 104,
							facing = 0,
						},
						{
							name = "factorycloak",
							x = 568,
							z = 616,
							facing = 1,
						},
						{
							name = "turretheavylaser",
							x = 680,
							z = 808,
							facing = 1,
						},
						{
							name = "cloakcon",
							x = 705,
							z = 734,
							facing = 1,
							difficultyAtLeast = 3,
						},
						{
							name = "turretlaser",
							x = 608,
							z = 1088,
							facing = 1,
						},
						{
							name = "turretgauss",
							x = 808,
							z = 1000,
							facing = 1,
						},
					}
				},
				{
					startX = 600,
					startZ = 3250,
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					humanName = "Contrariwise",
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"vehcon",
						"vehraid",
						"vehsupport",
						"vehriot",
						"vehaa",
						"turretlaser",
						"turretmissile",
					},
					difficultyDependantUnlocks = {
						[2] = {"vehassault"},
						[3] = {"vehheavyarty"}
					},
					commanderLevel = 2,
					commander = {
						name = "Tweedledee",
						chassis = "engineer",
						decorations = {
						  icon_overhead = { image = "UW" }
						},
						modules = { }
					},
					startUnits = {
						{
							name = "staticmex",
							x = 568,
							z = 3144,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 360,
							z = 3016,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "staticmex",
							x = 120,
							z = 3992,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "energysolar",
							x = 440,
							z = 3112,
							facing = 0,
						},
						{
							name = "energywind",
							x = 56,
							z = 3928,
							facing = 0,
						},
						{
							name = "factoryveh",
							x = 344,
							z = 2840,
							facing = 1,
						},
						{
							name = "turretheavylaser",
							x = 536,
							z = 2952,
							facing = 1,
						},
						{
							name = "turretlaser",
							x = 480,
							z = 3424,
							facing = 1,
						},
						{
							name = "vehcon",
							x = 490,
							z = 2756,
							facing = 1,
							difficultyAtLeast = 3,
						},
						{
							name = "turretgauss",
							x = 680,
							z = 3160,
							facing = 1,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = true,
					vitalUnitTypes = {
						"factorycloak",
						"factoryveh",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all enemy Factories and Commanders",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Have 12 Convicts
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 20,
					unitTypes = {
						"shieldcon",
					},
					image = planetUtilities.ICON_DIR .. "shieldcon.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Have 12 Convicts",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Own ten mex by 5:00
					satisfyByTime = 300,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 10,
					unitTypes = {
						"staticmex",
					},
					image = planetUtilities.ICON_DIR .. "staticmex.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Have ten Metal Extractors before 5:00",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = { -- Win by 15:00
					victoryByTime = 900,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 15:00",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"shieldfelon",
				"staticstorage",
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
