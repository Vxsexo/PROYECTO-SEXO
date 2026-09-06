ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('prx_dineronegro:lavarDinero')
AddEventHandler('prx_dineronegro:lavarDinero', function(amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    
    local accountMoney = 0
    local interval = 200000
    local delay = 300000 -- 5 minutos en milisegundos
    
    accountMoney = xPlayer.getAccount('black_money').money
    
    if amount % interval ~= 0 then
        notification('Solo puedes lavar en intervalos de 200,000 / You can only launder in intervals of 200,000')
        return
    end

    if accountMoney < amount then
        notification('No tienes dinero suficiente / You don\'t have enough money')
    else
        notification('Lavado en progreso, por favor espera 5 minutos / Washing in progress, please wait 5 minutes')
        Citizen.Wait(delay)
        
        local washPercentage = 0.30
        local cleanMoney = amount * washPercentage
        
        xPlayer.removeAccountMoney('black_money', amount)
        xPlayer.addMoney(cleanMoney)
        notification('Has lavado: ' .. amount .. '€ de dinero negro / You have washed: ' .. amount .. '€ of black money')
        notification('Has recibido: ' .. cleanMoney .. '€ de dinero limpio / You have received: ' .. cleanMoney .. '€ of clean money')
    end
end)

function notification(text)
    TriggerClientEvent('esx:showNotification', source, text)
end
