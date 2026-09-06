
function Notify(src, msg)
    if Config.Framework == "esx" then
        TriggerClientEvent('esx:showNotification', src, msg)
    elseif Config.Framework == "qb-core" then
        TriggerClientEvent('QBCore:Notify', src, msg)
    end
end