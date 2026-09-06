Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "RetornoRP" 							-- Bot Username
Config.avatar = "https://cdn.discordapp.com/attachments/1126187302868226130/1148124231381565470/logo2.png?ex=652cc703&is=651a5203&hm=ceef08bca80ede22d32ed1c0e79b913364a8a7bff026e690ecf040fd5cfe84ff&"				-- Bot Avatar
Config.communtiyName = "RetornoRP"					-- Icon top of the embed
Config.communtiyLogo = "https://cdn.discordapp.com/attachments/1126187302868226130/1148124231381565470/logo2.png?ex=652cc703&is=651a5203&hm=ceef08bca80ede22d32ed1c0e79b913364a8a7bff026e690ecf040fd5cfe84ff&"		-- Icon top of the embed
Config.FooterText = "2020 - 2021 © RetornoRP"						-- Footer text for the embed
Config.FooterIcon = "https://cdn.discordapp.com/attachments/1126187302868226130/1148124231381565470/logo2.png?ex=652cc703&is=651a5203&hm=ceef08bca80ede22d32ed1c0e79b913364a8a7bff026e690ecf040fd5cfe84ff&"			-- Footer icon for the embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.InlineFields = true			-- set to false if you don't want the player details next to each other

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs
Config.license = true				-- set to false to disable license in the logs
Config.IP = false					-- set to false to disable IP in the logs

-- Change color of the default embeds here
-- It used Decimal or Hex color codes. They will both work.
Config.BaseColors ={		-- For more info have a look at the docs: https://docs.preffech.com
	chat = "#A1A1A1",				-- Chat Message
	joins = "#3AF241",				-- Player Connecting
	leaving = "#F23A3A",			-- Player Disconnected
	deaths = "#000000",				-- Shooting a weapon
	shooting = "#2E66F2",			-- Player Died
	resources = "#EBEE3F",			-- Resource Stopped/Started	
}


Config.webhooks = {		-- For more info have a look at the docs: https://docs.preffech.com
	all = "",		-- All logs will be send to this channel
	chat = "https://discord.com/api/webhooks/1132349953541423144/HShXmMY5Lh-QnSJhUeC2AiWOYuV1sB8Fa31pH9iL5uXJplYSdjOWPR5zFZmRx5eLsKFf",		-- Chat Message
	joins = "https://discord.com/api/webhooks/1132350177072660530/ugJ2mreerLAp8ECYbrm1Py6pI6AtCiZQhUihh8529SUgYPzmn7zOEe0SJDAXjQzL6ZcA",		-- Player Connecting
	leaving = "https://discord.com/api/webhooks/1132350380227969154/EhACPqqGy3Ypkpr2DCnrj_0PMkezwLcter4Z9JHBjRZlmkY7w8ZrTKKdWOv3XtISV8WZ",	-- Player Disconnected
	deaths = "https://discord.com/api/webhooks/1132350478894764186/bghr4jJHlbrgo0HKkuofKNlGY9ha2n1aDLE3mc-Q2FKckoIpukbYm3g4Ab1I7ec5DXhj",		-- Shooting a weapon
	shooting = "https://discord.com/api/webhooks/1132350719815581807/Bw8lvPze5kRjBdmrcw2Hw5Nxxoa-6JjEZGSnLxD4-4XUnDe9I0kFnL4Zf4tKoacyhzqm",	-- Player Died
	resources = "",	-- Resource Stopped/Started	
}

Config.TitleIcon = {		-- For more info have a look at the docs: https://docs.preffech.com
	chat = "💬",				-- Chat Message
	joins = "📥",				-- Player Connecting
	leaving = "📤",			-- Player Disconnected
	deaths = "💀",				-- Shooting a weapon
	shooting = "🔫",			-- Player Died
	resources = "🔧",			-- Resource Stopped/Started	
}


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.2.0"
