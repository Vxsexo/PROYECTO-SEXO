ESX = exports['es_extended']:getSharedObject()

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)


RegisterNetEvent('Roda_Components:OpenMenu')
AddEventHandler('Roda_Components:OpenMenu', function ()
    local ped = PlayerPedId()
    if not IsPedArmed(ped, 7) then
        ESX.ShowNotification('No tienes un arma en la mano')
        return
    end
    local weapon = GetSelectedPedWeapon(ped)

    SendNUIMessage({ jsweapon = weapon })
    SetNuiFocus(true, true)
end)

RegisterNUICallback('datasend', function(data, cd)
    if HasPedGotWeapon(PlayerPedId(), GetHashKey(data.weaponc), false) then
        GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(data.weaponc), GetHashKey(data.compc))
     end
end)

function weaponComponent(weapon, component)
    if HasPedGotWeapon(PlayerPedId(), GetHashKey(weapon), false) then
        GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(weapon), GetHashKey(component))
     end
end
