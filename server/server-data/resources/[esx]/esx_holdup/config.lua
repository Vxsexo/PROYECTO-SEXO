Config = {}
Config.Locale = 'es'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 15.0, Type = 1    -- default circle type, low draw distance due to indoors area
}

Config.PoliceNumberRequired = 1
Config.TimerBeforeNewRob    = 600 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 50   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = true -- give black money? If disabled it will give cash instead

Stores = {
	['paleto_twentyfourseven'] = {
		position = vector3(1736.32, 6419.47, 34.03),
		reward = math.random(200000, 320000),
		nameOfStore = '24/7. (Paleto Bay)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['sandyshores_twentyfoursever'] = {
		position = vector3(1961.24, 3749.46, 31.34),
		reward = math.random(200000, 320000),
		nameOfStore = '24/7. (Sandy Shores)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['littleseoul_twentyfourseven'] = {
		position = vector3(-709.17, -904.21, 18.21),
		reward = math.random(200000, 320000),
		nameOfStore = '24/7. (Little Seoul)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['ocean_liquor'] = {
		position = vector3(-2959.33, 388.21, 13.00),
		reward = math.random(200000, 320000),
		nameOfStore = 'Robs Liquor. (Great Ocean Highway)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['polleros_paleto'] = {
		position = vector3(-2959.33, 388.21, 13.00), -- AGREGAR CORDENADAS
		reward = math.random(2500000, 2800000),
		nameOfStore = 'Facebook. (Retorno)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},	
	['rancho_liquor'] = {
		position = vector3(1126.80, -980.40, 44.41),
		reward = math.random(200000, 320000),
		nameOfStore = 'Robs Liquor. (El Rancho Blvd)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['sanandreas_liquor'] = {
		position = vector3(-1219.85, -916.27, 10.32),
		reward = math.random(200000, 320000),
		nameOfStore = 'Robs Liquor. (San Andreas Avenue)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['grove_ltd'] = {
		position = vector3(-43.40, -1749.20, 28.42),
		reward = math.random(200000, 320000),
		nameOfStore = 'LTD Gasoline. (Grove Street)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	['mirror_ltd'] = {
		position = vector3(1160.67, -314.40, 68.20),
		reward = math.random(200000, 320000),
		nameOfStore = 'LTD Gasoline. (Mirror Park Boulevard)',
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
		["tienda_bloods"] = {
		position = vector3(-1478.784, -375.202, 38.1),
		reward = math.random(200000, 320000),
		nameOfStore = "Bloods Tienda. (Bloods)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["facebook_retorno"] = {
		position = vector3(-1054.438, -232.415, 43.0),
		reward = math.random(1500000, 1800000),
		nameOfStore = "Facebook. (Retorno)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["joyeria_retorno"] = {
		position = vector3(-628.46, -235.54, 37.0),
		reward = math.random(2500000, 2800000),
		nameOfStore = "Joyeria. (Retorno)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["casino_diamond"] = {
		position = vector3(963.903, 8.462, 70.5),
		reward = math.random(2000000, 4100000),
		nameOfStore = "Casino. (Diamond)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["yate_robo"] = {
		position = vector3(-2078.262, -1016.584, 5.0),
		reward = math.random(2500000, 2800000),
		nameOfStore = "Yate. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["paletobanco_robo"] = {
		position = vector3(-104.068, 6477.69, 30.5),
		reward = math.random(2000000, 3500000),
		nameOfStore = "Banco. (Paleto)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto_robo"] = {
		position = vector3(1707.58, 4920.227, 41.2),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto2_robo"] = {
		position = vector3(2674.189, 3286.684, 54.3),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto2. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto3_robo"] = {
		position = vector3(544.89, 2663.441, 41.2),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto3. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto4_robo"] = {
		position = vector3(1169.099, 2717.988, 36.0),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto4. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["humanlabs_robo"] = {
		position = vector3(3589.239, 3713.245, 28.5),
		reward = math.random(2800000, 3500000),
		nameOfStore = "Humanlabs. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["flecca_robo"] = {
		position = vector3(311.651, -283.554, 52.7),
		reward = math.random(1500000, 1800000),
		nameOfStore = "Flecca Robo",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["flecca1_robo"] = {
		position = vector3(-353.509, -54.484, 48.0),
		reward = math.random(1500000, 1800000),
		nameOfStore = "Flecca Robo",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["flecca3_robo"] = {
		position = vector3(-1211.248, -335.584, 36.7),
		reward = math.random(1500000, 1800000),
		nameOfStore = "Flecca Robo",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["flecca4_robo"] = {
		position = vector3(-2957.144, 481.964, 14.7),
		reward = math.random(1500000, 1800000),
		nameOfStore = "Flecca Robo",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["bc_robo"] = {
		position = vector3(255.487, 226.432, 100.5),
		reward = math.random(3800000, 4500000),
		nameOfStore = "Banco Central Robo",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto5_robo"] = {
		position = vector3(-1828.462, 799.203, 137.2),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto5. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto6_robo"] = {
		position = vector3(-3249.25, 1005.589, 11.8),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto6. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tiendapaleto7_robo"] = {
		position = vector3(-3047.731, 587.782, 7.0),
		reward = math.random(250000, 350000),
		nameOfStore = "Paleto7. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	},
	["tienda8_robo"] = {
		position = vector3(380.225, 332.008, 102.6),
		reward = math.random(250000, 350000),
		nameOfStore = "Tienda8. (Deluxe)",
		secondsRemaining = 120, -- seconds 
		lastRobbed = 0
	},
	["tienda9_robo"] = {
		position = vector3(30.657, -1339.772, 28.5),
		reward = math.random(250000, 350000),
		nameOfStore = "Tienda9. (Deluxe)",
		secondsRemaining = 120, -- seconds
		lastRobbed = 0
	}	
}
