Config                            = {}
Config.DrawDistance               = 10
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'es'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.OxInventory = ESX.GetConfig().OxInventory

Config.Blip = {
	show = true,
	Sprite = 326,
	Display = 4,
	Scale = 0.8
}

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-1167.129, -1708.345, 3.5),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	ShopInside = {
		Pos     = vector3(-1215.561, -1732.291, 4.449),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 269.8385925293,
		Type    = -1 
	},

	ShopOutside = {
		Pos     = vector3(-1189.805, -1743.018, 4.449),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 219.49696350098,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-32.0, -1114.2, 25.4),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(-18.2, -1078.5, 25.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-44.6, -1080.7, 25.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
