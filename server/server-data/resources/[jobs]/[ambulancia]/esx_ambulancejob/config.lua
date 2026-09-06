Config                            = {}

Config.RespawnPointsJob = {
	police = {
		label = 'Comisaria',
		coords = vec3(427.7083, -978.8339, 30.7099)
	},
	-- ambulance = {
	-- 	label = 'Hospital',
	-- 	coords = vec3(295.7153, -1446.404, 29.9666)
	-- }
	swatt = {
		label = 'Swatt',
		coords = vec3(-433.973, 6016.656, 31.49)
	},
}

Config.DrawDistance               = 20.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).

Config.Marker                     = {type = 1, x = 1.2, y = 1.2, z = 0.1, r = 255, g = 0, b = 0, a = 100, rotate = true}

Config.ReviveReward               = 1500  -- Revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.LoadIpl                    = true -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'es'

Config.EarlyRespawnTimer          = 60000 * 5  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 10 -- time til the player bleeds out

Config.EnablePlayerManagement     = false -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = {coords = vector3(-460.335, -281.675, 34.914), heading = 48.5}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(-469.497, -354.565, 34.166),  
			sprite = 61,
			scale  = 0.9,
			color  = 1
		},

		AmbulanceActions = {
			vector3(-437.78, -308.693, 34.0) 
		},

		Pharmacies = {
			vector3(-434.676, -322.995, 34.0) 
		},

		Vehicles = {
			{
				Spawner = vector3(294.48321533203, -600.94012451172, 43.164112091064), -- 294.48321533203,-600.94012451172,43.164112091064
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = {type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(291.31140136719, -607.11657714844, 43.211330413818), heading = 227.6, radius = 4.0}, -- 291.31140136719,-607.11657714844,43.211330413818
					{coords = vector3(291.31140136719, -607.11657714844, 43.211330413818), heading = 227.6, radius = 4.0}, 
					{coords = vector3(291.31140136719, -607.11657714844, 43.211330413818), heading = 227.6, radius = 4.0}, 
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(342.6171875, -591.51220703125, 74.16170501709), 	-- 342.6171875,-591.51220703125,74.16170501709
				InsideShop = vector3(351.95129394531, -587.97607421875, 74.16170501709),-- 351.95129394531,-587.97607421875,74.16170501709
				Marker = {type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(351.95129394531, -587.97607421875, 74.16170501709), heading = 142.7, radius = 10.0},
					{coords = vector3(351.95129394531, -587.97607421875, 74.16170501709), heading = 142.7, radius = 10.0}
				}
			}
		},

		FastTravels = {
			{
				From = vector3(327.48754882812, -602.17211914062, 42.45),-- 327.48754882812,-602.17211914062,43.284091949463
				To = {coords = vector3(339.44107055664, -586.19177246094, 74.161727905273), heading = 0.0}, -- 339.44107055664,-584.19177246094,74.161727905273
				Marker = {type = 1, x = 1.2, y = 1.2, z = 0.1, r = 255, g = 0, b = 0, a = 100, rotate = false}
			},

			{
				From = vector3(340.79626464844, -582.28692626953, 73.20), -- 340.79626464844,-582.28692626953,74.161735534668
				To = {coords = vector3(329.48754882812, -602.17211914062, 42.45), heading = 0.0},
				Marker = {type = 1, x = 1.2, y = 1.2, z = 0.1, r = 255, g = 0, b = 0, a = 100, rotate = false}
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = {coords = vector3(333.1, -1434.9, 45.5), heading = 138.6},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = {coords = vector3(249.1, -1369.6, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = {coords = vector3(320.9, -1478.6, 28.8), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = {coords = vector3(238.6, -1368.4, 23.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = {coords = vector3(251.9, -1363.3, 38.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(235.4, -1372.8, 26.3), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {
	car = {
		ambulance = {
			{model = 'emsnspeedo', price = -1}
		},

		doctor = {
			{model = 'emsnspeedo', price = -1}
		},

		chief_doctor = {
			{model = 'emsnspeedo', price = -1}
		},

		boss = {
			{model = 'emsnspeedo', price = -1}
		}
	},

	helicopter = {
		ambulance = {},

		doctor = {
			{model = 'buzzard2', price = 150000}
		},

		chief_doctor = {
			{model = 'buzzard2', price = 150000},
			{model = 'seasparrow', price = 300000}
		},

		boss = {
			{model = 'buzzard2', price = 10000},
			{model = 'seasparrow', price = 250000}
		}
	}
}


