local ragdoll = false
function setRagdoll(flag)
  ragdoll = flag
end
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if ragdoll then
      SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
    end
  end
end)

ragdol = true
RegisterNetEvent("Ragdoll")
AddEventHandler("Ragdoll", function()
	if ( ragdol ) then
		setRagdoll(true)
		ragdol = false
	else
		setRagdoll(false)
		ragdol = true
	end
end)

RegisterCommand("suelo", function(source, args, raw) --change command here
    TriggerEvent("Ragdoll")
end, false) --False, allow everyone to run it(thnx @Havoc)


-- DESACTIVAR RADIO
Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
      SetVehicleRadioEnabled(vehicle, false)
  end
end)

-- RESTABLECER CHAT DE VOZ
RegisterCommand('rvoz', function()
  NetworkClearVoiceChannel()
  NetworkSessionVoiceLeave()
  Wait(50)
  NetworkSetVoiceActive(false)
  MumbleClearVoiceTarget(2)
  Wait(1000)
  MumbleSetVoiceTarget(2)
  NetworkSetVoiceActive(true)
  ESX.ShowNotification('Chat de voz reiniciado.')
end)

-- /ID 
ESX = nil

local disPlayerNames = 2
local showIds = false
playerDistances = {}


RegisterCommand("id",
    function(source, args) 
        showIds = true
    end,
    false
)
RegisterCommand("id",
    function(source, args) 
        showIds = false
    end,
    false
)



Citizen.CreateThread(function()
    Wait(50)
    while true do
        if(showIds)then
            for id = 0, 255 do 
                if NetworkIsPlayerActive(id) then
                    if GetPlayerPed(id) ~= GetPlayerPed(-1) then
                        if (playerDistances[id] ~= nil and playerDistances[id] < disPlayerNames) then
                            x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
                            if NetworkIsPlayerTalking(id) then
                                DrawText3D(x2, y2, z2+1.2, GetPlayerServerId(id), 255, 0, 0)
                            else
                                DrawText3D(x2, y2, z2+1.2, GetPlayerServerId(id), 255,255,255)
                            end
                        end  
                    end
                end
            end
        end
        Citizen.Wait(5)
    end
end)

Citizen.CreateThread(function()
    while true do
        --for _, id in ipairs(GetActivePlayers()) do
        if(showIds)then
            for id = 0, 255 do
                if GetPlayerPed(id) ~= GetPlayerPed(-1) then
                    x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                    x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
                    distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))
                    playerDistances[id] = distance
                end
            end
        end
        Citizen.Wait(1000)
    end
end)

function DrawText3D(x,y,z, text, r,g,b) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 0.60*scale)
        SetTextFont(0)
        SetTextColour(r, g, b, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end


admintag = false

RegisterNetEvent('id:admintagon')
AddEventHandler("id:admintagon", function(source)

--    print("Ha llegado hasta aqui")

ESX.ShowNotification("Has activado la visión de administrador.")

    admintag = true

end)


RegisterNetEvent('id:admintagoff')
AddEventHandler("id:admintagoff", function(source)

    ESX.ShowNotification("Has desactivado la visión de administrador.")

    admintag = false

end)