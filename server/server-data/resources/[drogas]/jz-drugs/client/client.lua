ESX              = nil

local jasperz = true

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.ESXTrigger, function(obj) ESX = obj end) 
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData() == nil do
        Citizen.Wait(10)
    end
    PlayerData = ESX.GetPlayerData()

    ESX.TriggerServerCallback('jz-drugs:getCoords', function(OpgehaaldeConfig)
		Config.CoordsDrugs = OpgehaaldeConfig;
	end)

    Citizen.Wait(10)
end)

local NPCs = {}
Citizen.CreateThread(function()
	repeat
		Wait(10000)
	until Config.CoordsDrugs ~= nil
	while true do
		Citizen.Wait(6)
        local goeiepe
        local PlayerPed = GetPlayerPed(-1)
		local coords = GetEntityCoords(PlayerPed)
        if jasperz then
            for k,v in pairs(Config.CoordsDrugs) do
                for i,j in pairs(v.Zones) do
                    if(GetDistanceBetweenCoords(coords, j.x, j.y, j.z, true) < Config.Distance) then
                        if v.Type == 'Dealer' then
                            JasperzScriptText(vector3(j.x, j.y, j.z), v.Text)
                            if IsControlJustPressed(0, 38) then 
                                exports.crno_progressbar:Progress('Hablando con el camello', v.ProgressBarTex)
                                Citizen.Wait(3010)
                                exports['br-menu']:SetTitle("Drugs Dealer")
                                exports['br-menu']:AddButton(v.WeedName , v.WeedSellText ,'verkoopwiet' ,true)
                                exports['br-menu']:AddButton(v.CokeName , v.CokeSellText ,'verkoopcoke' ,true)
                                exports['br-menu']:AddButton(v.MethName , v.MethSellText ,'verkoopmeth' ,true)
                            end
                            if NPCs[k] == nil then
                                local coordinaten = {
                                    {j.x, j.y, j.z,"DrugsDealer", 230.00,0x23B88069,"g_m_y_ballasout_01"}
                                }
                                for _,v in pairs(coordinaten) do
                                RequestModel(GetHashKey(v[7]))
                                while not HasModelLoaded(GetHashKey(v[7])) do
                                    Wait(1)
                                end
                                NPCs[k] = CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
                                SetEntityHeading(NPCs[k], "91.87")
                                FreezeEntityPosition(NPCs[k], true)
                                SetEntityInvincible(NPCs[k], true)
                                SetBlockingOfNonTemporaryEvents(NPCs[k], true)
                                end
                            end
                        else
                            JasperzScriptText(vector3(j.x, j.y, j.z), v.Text)
                            if IsControlJustPressed(0, 38) then
                                Citizen.Wait(10)
                                exports.crno_progressbar:Progress('Recolectando', v.ProgressBarTex)
                                ExecuteCommand ("e mechanic")
                                jasperz = false
                                Citizen.Wait(3000)
                                ClearPedTasksImmediately(GetPlayerPed(-1))  
                                TriggerServerEvent(v.ServerEventTrigger)
                                jasperz = true
                            end
                        end
                    end
                end
            end
        end
	end
end)

function JasperzScriptText(coords, text)
    local onScreen, _x, _y = World3dToScreen2d(coords["x"], coords["y"], coords["z"])
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)

    local factor = string.len(text) / 370

    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 65)
end

RegisterNetEvent('verkoopwiet')
AddEventHandler('verkoopwiet', function()
    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Community Service Menu', {
		title = "Weed Sell",
	}, function (data2, menu)
		local valueding = tonumber(data2.value)
		
		if valueding == nil then
			ESX.ShowNotification('Cantidad no válida')
		else
			TriggerServerEvent("jz-drugs:VerkoopWiet", valueding)
			menu.close()
		end
	end, function (data2, menu)
		menu.close()
	end)
end)

RegisterNetEvent('verkoopcoke')
AddEventHandler('verkoopcoke', function()
    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Menú de servicio comunitario', {
		title = "Coke Sell",
	}, function (data2, menu)
		local valueding = tonumber(data2.value)
		
		if valueding == nil then
			ESX.ShowNotification('Invalid quantity')
		else
			TriggerServerEvent("jz-drugs:VerkoopCoke", valueding)

			menu.close()
		end
	end, function (data2, menu)
		menu.close()
	end)
end)

RegisterNetEvent('verkoopmeth')
AddEventHandler('verkoopmeth', function()
    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Menú de servicio comunitario', {
		title = "Meth Sell",
	}, function (data2, menu)
		local valueding = tonumber(data2.value)
		
		if valueding == nil then
			ESX.ShowNotification('Invalid quantity')
		else
			TriggerServerEvent("jz-drugs:VerkoopMeth", valueding)
			menu.close()
		end
	end, function (data2, menu)
		menu.close()
	end)
end)