--
-- Vars
--
local job = false
local job2 = false

--
-- Citizens
--
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    SpawnNPC('a_m_m_eastsa_02', vector4(504.799, 5604.485, 796.91, 490.00))
    while true do
        local _sleep = 1000
        local _char = PlayerPedId()
        local _charPos = GetEntityCoords(_char)
        if #(_charPos - vector3(504.799, 5604.485, 797.91)) < 2 then
            _sleep = 0
            if job == true or job2 == true then
                Create3D(vector3(504.799, 5604.485, 798.91), '~r~Ya has iniciado la busqueda de informacion!!')
            else
                Create3D(vector3(504.799, 5604.485, 798.91), 'Pulsa ~y~E~w~ para conseguir informacion de drogas!')
                if IsControlJustPressed(0, 38) then
                    ESX.Game.SpawnVehicle('kamacho', vector3(500.768, 5537.371, 778.021), 500.00, function(veh)
                        exports['esx_fuel']:SetFuel(veh, 100)
                        TaskWarpPedIntoVehicle(_char, veh, -1)
                    end)
                    blip = AddBlipForCoord(vector3(817.847, -3192.747, 4.901))   -- Punto sitio
                    SetBlipRoute(blip, true)
                    job = true
                end
            end
        end
        if job == true then
            if #(_charPos - vector3(817.847, -3192.747, 5.901)) < 2 then
                _sleep = 0
                Create3D(vector3(817.847, -3192.747, 5.901), 'Pulsa ~y~E~w~ para conseguir mas informacion!')
                if IsControlJustPressed(0, 38) then
                    RemoveBlip(blip)
                    SetBlipRoute(blip, false)
                    blip2 = AddBlipForCoord(vector3(-226.839, 294.402, 92.056))  -- Punto venta
                    SetBlipRoute(blip2, true)
                    TriggerServerEvent('idaynovuelta:addThings')
                    job = false
                    job2 = true
                end
            end
        end
        if job2 == true then
            if #(_charPos - vector3(-226.839, 294.402, 92.056)) < 2 then
                _sleep = 0
                Create3D(vector3(-226.839, 294.402, 92.056), 'Pulsa ~y~E~w~ para finalizar la busqueda de informacion.')
                if IsControlJustPressed(0, 38) then
                    DeleteVehicle(GetVehiclePedIsIn(_char))
                    RemoveBlip(blip2)
                    SetBlipRoute(blip2, false)
                    job = false
                    job2 = false
                end
            end
        end
        Citizen.Wait(_sleep)
    end
end)

--
-- Functions
--
Create3D = function(coords, texto)
    local x, y, z = table.unpack(coords)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(5)
        AddTextComponentString(texto)
        DrawText(_x,_y)
    end
end

SpawnNPC = function(modelo, x,y,z,h)
    hash = GetHashKey(modelo)
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(1)
    end
    crearNPC = CreatePed(5, hash, x,y,z,h, false, true)
    FreezeEntityPosition(crearNPC, true)
    SetEntityInvincible(crearNPC, true)
    SetBlockingOfNonTemporaryEvents(crearNPC, true)
    TaskStartScenarioInPlace(crearNPC, "WORLD_HUMAN_DRINKING", 0, false)
end