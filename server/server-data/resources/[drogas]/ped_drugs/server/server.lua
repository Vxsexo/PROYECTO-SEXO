ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('idaynovuelta:addThings')
AddEventHandler('idaynovuelta:addThings', function()
    local user = ESX.GetPlayerFromId(source)
    user.removeMoney(500)
    user.addInventoryItem('weed', 3)
end)