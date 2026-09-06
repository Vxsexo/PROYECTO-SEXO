Config = {}
-- MORE AVAILABLE ON 5MSCRIPTS.COM
Config.UserLicense = "None"
Config["image_source"] = "nui://ox_inventory/web/images/"
Config.CloseInventoryHudTrigger = "esx_inventoryhud:closeInventory"

Config["chance"] = {
	[1] = { name = "Comun", rate = 85 },
	[2] = { name = "Raro", rate = 45 },
	[3] = { name = "Epico", rate = 10 },
	[4] = { name = "Unico", rate = 0.02} ,
	[5] = { name = "Legendario", rate = 0.3 },
}

Config["broadcast"] = true 
Config["broadcast_tier"] = {
	[1] = false,
	[2] = false,
	[3] = false,
	[4] = false,
	[5] = false,
}

Config["5mscriptscom"] = {
	["retor_box"] = {
		name = "Case #1",
		list = {
			{ money = 20000, tier = 1 },
			{ money = 30000, tier = 1 },
			{ item = "bandage", amount=1, tier = 1 },

			{ item = "retor_box", amount=1, tier = 2 },
			{ item = "fixkit", amount=1, tier = 2 },
			{ item = "bandage", amount=2, tier = 2 },

			{ money = 100000, tier = 3 },
			{ weapon = "WEAPON_PISTOL", tier = 3 },

			{ money = 150000, tier = 4 },
			{ item = "retor_box", amount=3, tier = 4},
			{ money = 200000, tier = 4 },

			{ item = "auto_bronce", amount=1, tier = 5},
			{ item = "coin_100", amount=1, tier = 5},
			{ item = "retor_box_vip", amount=1, tier = 5},
		}
	},
	
-- MORE AVAILABLE ON 5MSCRIPTS.COM

	["retor_box_vip"] = {
		name = "Case #2",
		list = {
			{ item = "retor_box_vip", amount=1, tier = 1},
			{ money = 100000, tier = 1 },

			{ money = 200000, tier = 2 },
			{ money = 400000, tier = 2 },
			{ weapon = "WEAPON_PISTOL", tier = 2 },

			{ item = "coin_100", amount=1, tier = 3},
			{ money = 600000, tier = 4 },

			{ item = "auto_bronce", amount=1, tier = 4},
			{ item = "auto_plata", amount=1, tier = 4 },

			{ item = "auto_oro", amount=1, tier = 5 },
		}
	},
}