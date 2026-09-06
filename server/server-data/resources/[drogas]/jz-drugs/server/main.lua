ESX = nil 

TriggerEvent(Config.ESXTrigger, function(obj) ESX = obj end)

RegisterServerEvent('jz-drugs:GeefWiet')
AddEventHandler('jz-drugs:GeefWiet', function()
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)    
    xPlayer.addInventoryItem('weed', 1)
end)

RegisterServerEvent('jz-drugs:GeefCoke')
AddEventHandler('jz-drugs:GeefCoke', function()
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)    
    xPlayer.addInventoryItem('coke', 1)
end)

RegisterServerEvent('jz-drugs:GeefMeth')
AddEventHandler('jz-drugs:GeefMeth', function()
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)    
    xPlayer.addInventoryItem('meth', 1)
end)

RegisterServerEvent('jz-drugs:VerpakWiet')
AddEventHandler('jz-drugs:VerpakWiet', function()
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	if xPlayer.getInventoryItem('weed').count > 2 then
    xPlayer.addInventoryItem('verpakwiet', 1)
	xPlayer.removeInventoryItem('weed', 2)
	else
	TriggerClientEvent('esx:showNotification', source, "¡No tienes suficiente hierba!")
	end
end)

RegisterServerEvent('jz-drugs:VerpakCoke')
AddEventHandler('jz-drugs:VerpakCoke', function()
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src) 
	if xPlayer.getInventoryItem('coke').count > 2 then
	xPlayer.addInventoryItem('verpakcoke', 1)
	xPlayer.removeInventoryItem('coke', 2)
	else
	TriggerClientEvent('esx:showNotification', source, "¡No tienes suficiente coca!")
	end
end)

RegisterServerEvent('jz-drugs:VerpakMeth')
AddEventHandler('jz-drugs:VerpakMeth', function()
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src) 
	if xPlayer.getInventoryItem('meth').count > 2 then
	xPlayer.addInventoryItem('verpakmeth', 1)
	xPlayer.removeInventoryItem('meth', 2)
	else
	TriggerClientEvent('esx:showNotification', source, "¡No tienes suficiente metanfetamina!")
	end
end)

RegisterServerEvent('jz-drugs:VerkoopWiet')
AddEventHandler('jz-drugs:VerkoopWiet', function(aantal)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src) 
    local sellprice = Config.WeedPrice
    local price = sellprice * aantal
	if xPlayer.getInventoryItem('verpakwiet').count > aantal then
	    xPlayer.removeInventoryItem('verpakwiet', aantal)
		xPlayer.addAccountMoney('black_money', price)
        local ids = ExtractIdentifiers(src)
        local playername = GetPlayerName(src)
        local steamid = ids.steam
        sendToDiscord(playername .. '(' .. steamid  .. ') Sale **' .. aantal .. 'x** Weed for: **€' .. price .. '**', 14177041)
	else
	TriggerClientEvent('esx:showNotification', source, "¡No tienes suficiente hierba!")
	end
end)

RegisterServerEvent('jz-drugs:VerkoopCoke')
AddEventHandler('jz-drugs:VerkoopCoke', function(aantal)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src) 
    local sellprice = Config.CokePrice
    local price = sellprice * aantal
	if xPlayer.getInventoryItem('verpakcoke').count > aantal then
	    xPlayer.removeInventoryItem('verpakcoke', aantal)
		xPlayer.addAccountMoney('black_money', price)
        local ids = ExtractIdentifiers(src)
        local playername = GetPlayerName(src)
        local steamid = ids.steam
        sendToDiscord(playername .. '(' .. steamid  .. ') Sale **' .. aantal .. 'x** Coke for: **€' .. price .. '**', 14177041) 
	else
	TriggerClientEvent('esx:showNotification', source, "¡No tienes suficiente coca!")
	end
end)

RegisterServerEvent('jz-drugs:VerkoopMeth')
AddEventHandler('jz-drugs:VerkoopMeth', function(aantal)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src) 
    local sellprice = Config.MethPrice
    local price = sellprice * aantal
	if xPlayer.getInventoryItem('verpakmeth').count > aantal then
	    xPlayer.removeInventoryItem('verpakmeth', aantal)
		xPlayer.addAccountMoney('black_money', price)
        local ids = ExtractIdentifiers(src)
        local playername = GetPlayerName(src)
        local steamid = ids.steam
        sendToDiscord(playername .. '(' .. steamid  .. ') Sale **' .. aantal .. 'x** Meth for: **€' .. price .. '**', 14177041) 
	else
	    TriggerClientEvent('esx:showNotification', source, "¡No tienes suficiente metanfetamina!")
	end
end)

function sendToDiscord(message, color)

    local embed = {
          {
              ["color"] = color,
              ["title"] = "**Venta de drogas**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = "Made by Jasperz#0001",
              },
          }
      }
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = embed, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end

function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end

local calledUsers = {};
ESX.RegisterServerCallback('jz-drugs:getCoords', function(source, cb)
	if calledUsers[source] == nil then
		calledUsers[source] = true;
		cb(Config.AllCoords)
	end
end)
