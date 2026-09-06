AddEventHandler('chatMessage', function(playerId, playerName, message)
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()

		-- playerName = GetRealPlayerName(playerId)
		-- TriggerClientEvent('chat:addMessage', -1, {args = {TranslateCap('ooc_prefix', playerName), message}, color = {128, 128, 128}})
	end
end)


RegisterCommand('twt', function(playerId, args, rawCommand)
	local msg = table.concat(args, " ")
	if playerId == 0 then
		print('[^1ERROR^7] This Command Cannot Be Used By The Console!')
	else
	local playerName = GetRealPlayerName(playerId)
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #00aaff;background-color: #00000050;margin-top:3px;" class="icono">&nbsp;  <i class="fab fa-twitter badge-twt" style="color:#00aaff"></i> TWITTER [@'..playerName..']: ^0 ' .. msg,
	})
	end
end, false)

RegisterCommand('anon', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('[^1ERROR^7] This Command Cannot Be Used By The Console!')
	else
		local msg = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		-- TriggerClientEvent('chat:addMessage', -1, {args = {TranslateCap('twt_prefix', "Anonymous"), args}, color = {0, 153, 204}})
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #4D05F1;background-color: #00000050;margin-top:3px;" class="icono">&nbsp;ANÓNIMO - ['..playerId..']: ^0 ' .. msg,
		})
	end
end, false)

RegisterCommand('ooc', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('[^1ERROR^7] This Command Cannot Be Used By The Console!')
	else
		local msg = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		-- TriggerClientEvent('chat:addMessage', -1, {args = {TranslateCap('twt_prefix', "Anonymous"), args}, color = {0, 153, 204}})
		TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #5E646B;background-color: #00000050;margin-top:3px;" class="icono">&nbsp;OOC - '..GetPlayerName(playerId)..' ['..playerId..']: ^0 ' .. msg,
		})
	end
end, false)


RegisterCommand('me', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('[^1ERROR^7] This Command Cannot Be Used By The Console!')
	else
		local msg = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		local pedCoords = GetEntityCoords(GetPlayerPed(playerId))
		local allPlayers = ESX.GetExtendedPlayers()
		for k,v in pairs(allPlayers) do 
			local targetPedCoords = GetEntityCoords(GetPlayerPed(v.source))
			local distance = #(pedCoords - targetPedCoords)
			if distance < 20.0 then
				TriggerClientEvent('chat:addMessage', v.source, {
					template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #FD00AC;background-color: rgba(253, 0, 173, 0.3);margin-top:3px;" class="icono">&nbsp;ME ['..playerId..']: ^0 ' .. msg,
				})
			end
		end
	end
end, false)

RegisterCommand('do', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('[^1ERROR^7] This Command Cannot Be Used By The Console!')
	else
		local msg = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		local pedCoords = GetEntityCoords(GetPlayerPed(playerId))
		local allPlayers = ESX.GetExtendedPlayers()
		for k,v in pairs(allPlayers) do 
			local targetPedCoords = GetEntityCoords(GetPlayerPed(v.source))
			local distance = #(pedCoords - targetPedCoords)
			if distance < 20.0 then
				TriggerClientEvent('chat:addMessage', v.source, {
					template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #16F700;background-color: rgba(22, 247, 0, 0.3);margin-top:3px;" class="icono">&nbsp;DO ['..playerId..']: ^0 ' .. msg,
				})
			end
		end
	end
end, false)


RegisterCommand('anunciojob', function(src, args)
    local src = src 
    local xPlayer = ESX.GetPlayerFromId(src)
    local job = xPlayer.job.name
    local isValid = Config.Jobs[job]
    if not isValid then 
        TriggerClientEvent('chat:addMessage', src, {
			template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #ff0022;background-color: rgba(255, 0, 34, 0.3);margin-top:3px;" class="icono">&nbsp;⚠️ No tienes permisos para usar este comando.',
		})
        return
    end
	local playerName = GetRealPlayerName(src)
    local message = table.concat(args, ' ')
	TriggerClientEvent('chat:addMessage', src, -1, {
		template = '<div style="padding: 3px;font-weight:700; border-left:4px solid '..isValid.borderColor..';background-color: '..isValid.backgroundColor..';margin-top:3px;" class="icono">&nbsp; '..isValid.icono..' '..isValid.prefix..' - '..playerName..': ^0 '..message,
	})
end)


RegisterCommand('anuncio', function(src, args)
	local src = src
	local xPlayer = ESX.GetPlayerFromId(src)
	local group = xPlayer.getGroup()
	if not IsAdmin(group) then
		TriggerClientEvent('chat:addMessage', src, {
			template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #ff0022;background-color: rgba(255, 0, 34, 0.3);margin-top:3px;" class="icono">&nbsp;⚠️ No tienes permisos para usar este comando.',
		})
		return
	end
	local msg = table.concat(args, ' ')
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #ff0000;background-color: rgba(239, 32, 14, 0.7);margin-top:3px;" class="icono">&nbsp;ANUNCIO: ^0 ' .. msg,
	})

end)

function GetRealPlayerName(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer then
		if Config.EnableESXIdentity then
			if Config.OnlyFirstname then
				return xPlayer.get('firstName')
			else
				return xPlayer.getName()
			end
		else
			return GetPlayerName(playerId)
		end
	else
		return GetPlayerName(playerId)
	end
end

function IsAdmin(group)
	for k,v in pairs(Config.Admins) do 
		if group == v then 
			return true
		end
	end
	return false
end


RegisterNetEvent('esx:playerDropped', function(playerId, reason)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #EF3D3E;background-color: #00000050;margin-top:3px;" class="icono">&nbsp;'..GetPlayerName(xPlayer.source)..'^0 Se fue a dormir',
	})
end)

RegisterNetEvent('esx:playerLoaded', function(player, xPlayer, isNew)
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div style="padding: 3px;font-weight:700; border-left:4px solid #62CF2C;background-color: #00000050;margin-top:3px;" class="icono">&nbsp;'..GetPlayerName(xPlayer.source)..'^0 Se ha despertado',
	})
end)