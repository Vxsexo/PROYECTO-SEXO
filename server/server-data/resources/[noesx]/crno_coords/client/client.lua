ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/copy',   _U('copy_help'))
	TriggerEvent('chat:addSuggestion', '/copyheading',   _U('copyheading_help'))
end)

RegisterCommand('copy', function(source, args, rawCommand)
    TriggerEvent("pNotify:SendNotification",{	
        text = "<b style='color:#E8FF00'>📌 Has copiado al portapapeles tus coordenadas actuales!</b>",  -- Para modificar el color del texto en la notificacion lo puedes hacer en este enlace https://htmlcolorcodes.com/es/
        type = "warning",
        timeout = (4500),
        layout = "centerLeft",
        queue = "global"
    })
	local coords = GetEntityCoords(PlayerPedId())
	SendNUIMessage({
		coords =  ESX.Math.Round(coords.x, 3) .. ", " .. ESX.Math.Round(coords.y, 3) .. ", " .. ESX.Math.Round(coords.z, 3)
	})
end)

RegisterCommand('copyheading', function()
	TriggerEvent("pNotify:SendNotification",{	
        text = "<b style='color:#00B581'>📍Has copiado al portapapeles tu heading actual!</b>",   -- Para modificar el color del texto en la notificacion lo puedes hacer en este enlace https://htmlcolorcodes.com/es/
        type = "warning",
        timeout = (4500),
        layout = "centerLeft",
        queue = "global"
    })
	local coords = GetEntityHeading(PlayerPedId())
	SendNUIMessage({
		coords = ""..coords..""
	})
end)

RegisterCommand('tpc', function(source, args, rawCommand)
	local coords = {}
	for coord in string.gmatch(args[1] or "0,0,0","[^,]+") do
		table.insert(coords,tonumber(coord))
	end

	local x,y,z = 0,0,0
	if coords[1] ~= nil then x = coords[1] end
	if coords[2] ~= nil then y = coords[2] end
	if coords[3] ~= nil then z = coords[3] end

	SetEntityCoords(GetPlayerPed(-1), x,y,z, false)
end)