return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dinero Sucio',
	},

	['burger'] = {
		label = 'Pan con carne',
		weight = 1,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['hamburguesa'] = {
		label = 'Hamburguesa',
		weight = 1,
		client = {
			status = { hunger = 500000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['hamburguesamc'] = {
		label = 'HamburguesaMC',
		weight = 1,
		client = {
			status = { hunger = 500000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Te comiste una rica hamburguesaMC'
		},
	},

	['papasmc'] = {
		label = 'PapasMC',
		weight = 1,
		client = {
			status = { hunger = 500000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Te comiste unas papas'
		},
	},

	['omurice'] = {
		label = 'Om-Nom Omurice',
		weight = 1,
		client = {
			status = { hunger = 250000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Te comiste un delicioso omurice'
		},
	},

	['kiracurry'] = {
		label = 'Kira Kira Curry',
		weight = 1,
		client = {
			status = { hunger = 250000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Te comiste un delicioso kira curry'
		},
	},

	['katsusando'] = {
		label = 'Sugoi Katsu Sando',
		weight = 1,
		client = {
			status = { hunger = 450000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Te comiste un delicioso katsu sando'
		},
	},

	['cocacola'] = {
		label = 'Coca Cola',
		weight = 1,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['matchacoffe'] = {
		label = 'Matcha Coffee',
		weight = 1,
		client = {
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te tomaste un rico matcha coffe'
		}
	},

	['boobamilk'] = {
		label = 'Booba Milk Tea',
		weight = 1,
		client = {
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te tomaste un rico Booba Milk Tea'
		}
	},

	['hotchocolate'] = {
		label = 'Hot Chocolate',
		weight = 1,
		client = {
			status = { thirst = 1000000, hunger = 1000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te tomaste un rico Hot chocolate'
		}
	},

	['cocamc'] = {
		label = 'CocaColaMC',
		weight = 1,
		client = {
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te tomaste una rica coca cola'
		}
	},

	['fantamc'] = {
		label = 'FantaMC',
		weight = 1,
		client = {
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te tomaste un rica fanta'
		}
	},

	['lovelyhotchocolate'] = {
		label = 'Lovely Hot Chocolate',
		weight = 1,
		client = {
			status = { thirst = 1000000, hunger = 1000000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Te tomaste un rico Lovely Hot Chocolate'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 1,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Chaleco',
		weight = 3000,
		stack = true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Kit de reparación",
		weight = 3,
		stack = true,
		close = true,
	},

	["alive_chicken"] = {
		label = "Poulet vivant",
		weight = 1,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Vêtement",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Cuivre",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Bois coupé",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamant",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Essence",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Tissu",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Poisson",
		weight = 1,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Or",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Fer",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Poulet en barquette",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Paquet de planches",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Pétrole",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Pétrole Raffiné",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Poulet abattu",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Pierre",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Pierre Lavée",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Bois",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Laine",
		weight = 1,
		stack = true,
		close = true,
	},

	["Coke"] = {
		label = "Cocaina",
		weight = 1,
		stack = true,
		close = true,
	},

	["meth"] = {
		label = "Metanfetamina",
		weight = 1,
		stack = true,
		close = true,
	},

	["verpakcoke"] = {
		label = "Cocaina Empaquetada",
		weight = 1,
		stack = true,
		close = true,
	},

	["verpakmeth"] = {
		label = "Metanfetamina Empaquetada",
		weight = 1,
		stack = true,
		close = true,
	},

	["verpakwiet"] = {
		label = "Canuto de maria",
		weight = 1,
		stack = true,
		close = true,
	},

	["weed"] = {
		label = "Mariguana",
		weight = 1,
		stack = true,
		close = true,
	},

	["skateboard"] = {
		label = "Skate",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-copper"] = {
		label = "Cobre",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-diamonds"] = {
		label = "Diamante",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-iron"] = {
		label = "Hierro",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-lead"] = {
		label = "Plomo",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-molibden"] = {
		label = "molibden",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-silver"] = {
		label = "Plata",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-tin"] = {
		label = "Estaño",
		weight = 1,
		stack = true,
		close = true,
	},

	["dream-zinc"] = {
		label = "Zinc",
		weight = 1,
		stack = true,
		close = true,
	},

	["coke"] = {
		label = "Cocaina",
		weight = 1,
		stack = true,
		close = true,
	},

	["coin_100"] = {
		label = "+1 Vip Coins",
		weight = 1,
		stack = true,
		close = true,
	},

	["auto_bronce"] = {
		label = "Vale x1 Auto Bronce",
		weight = 1,
		stack = true,
		close = true,
	},

	["auto_oro"] = {
		label = "Vale x1 Auto Oro",
		weight = 1,
		stack = true,
		close = true,
	},

	["auto_plata"] = {
		label = "Vale x1 Auto Plata",
		weight = 1,
		stack = true,
		close = true,
	},

	["retor_box"] = {
		label = "RetorBox",
		weight = 1,
		stack = true,
		close = true,
	},

	["retor_box_vip"] = {
		label = "RetorBox Vip",
		weight = 1,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Chalumeaux",
		weight = 2,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Kit carosserie",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Herramienta para hacer kit de carroceria",
		weight = 2,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Herramienta para hacer kit de reparacion",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "bouteille de gaz",
		weight = 2,
		stack = true,
		close = true,
	},

	["pandehamburguesa"] = {
		label = "Pan De Hamburguesa",
		weight = 2,
		stack = true,
		close = true,
	},

	["lechuga"] = {
		label = "Lechuga",
		weight = 2,
		stack = true,
		close = true,
	},

	["tomate"] = {
		label = "Tomate",
		weight = 2,
		stack = true,
		close = true,
	},

	["carne"] = {
		label = "Carne",
		weight = 2,
		stack = true,
		close = true,
	},

	["fashion_angelring"] = {
		label = "Aro De Angel",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_arcadeahri"] = {
		label = "Auriculares Rosa",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_pcube2"] = {
		label = "Auriculares Celeste",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_pcube22"] = {
		label = "Auriculares Fucsia",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_pcube2222"] = {
		label = "Auriculares Amarillo",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_pcube222"] = {
		label = "Auriculares Verde",
		weight = 2,
		stack = false,
		close = true,
	},

	["dragon"] = {
		label = "Dragon",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_angelwing"] = {
		label = "Alas",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_angelwing2"] = {
		label = "Alas Amarillas",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_angelwing3"] = {
		label = "Alas Negras",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_anglewing"] = {
		label = "Alas Con Humos",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_bearhat"] = {
		label = "Gorra De Oso",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_birdcooper"] = {
		label = "Gallito",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_chii"] = {
		label = "Gatito",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_demonwing"] = {
		label = "Alas Rojas",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_heartpink"] = {
		label = "Corazon",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_hellwing"] = {
		label = "Alas Con Fuego",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_sunglasses"] = {
		label = "Lentes",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_wingsrender"] = {
		label = "Alas Doradas",
		weight = 2,
		stack = false,
		close = true,
	},

	["fashion_angelwing19"] = {
		label = "Alas Verdes",
		weight = 2,
		stack = false,
		close = true,
	},

	["wing_gb_pink"] = {
		label = "Alas Rosadas",
		weight = 2,
		stack = false,
		close = true,
	},

	["wing_gb_green"] = {
		label = "Alas Verdes",
		weight = 2,
		stack = false,
		close = true,
	},

	["wing_gb_blue"] = {
		label = "Alas Azules",
		weight = 2,
		stack = false,
		close = true,
	},

	["cuffs"] = {
		label = "Hand Cuffs",
		weight = 1,
		stack = true,
		close = true,
	},

	["salsabigmac"] = {
		label = "Salsa Big Mac",
		weight = 1,
		stack = true,
		close = true,
	},

	["hielo"] = {
		label = "hielo",
		weight = 1,
		stack = true,
		close = true,
	},

	["agua"] = {
		label = "agua",
		weight = 1,
		stack = true,
		close = true,
	},

	["colorantecoca"] = {
		label = "Colorante CocaCola",
		weight = 1,
		stack = true,
		close = true,
	},

	["colorantefanta"] = {
		label = "Colorante Fanta",
		weight = 1,
		stack = true,
		close = true,
	},

	["casino_beer"] = {
		label = "Casino Beer",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_burger"] = {
		label = "Casino Burger",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_chips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_coffee"] = {
		label = "Casino Coffee",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_coke"] = {
		label = "Casino Kofola",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_donut"] = {
		label = "Casino Donut",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_ego_chaser"] = {
		label = "Casino Ego Chaser",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_luckypotion"] = {
		label = "Casino Lucky Potion",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_psqs"] = {
		label = "Casino Ps & Qs",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_sandwitch"] = {
		label = "Casino Sandwitch",
		weight = 0,
		stack = true,
		close = true,
	},

	["casino_sprite"] = {
		label = "Casino Sprite",
		weight = 0,
		stack = true,
		close = true,
	},
}