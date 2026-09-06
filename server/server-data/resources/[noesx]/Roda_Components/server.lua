ESX = exports['es_extended']:getSharedObject()

RegisterCommand('componentes', function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local job = xPlayer.job.name
    local havePerms = HavePerms(job)
    if havePerms then
        TriggerClientEvent('Roda_Components:OpenMenu', src)
    else
        xPlayer.showNotification('No tienes permisos para usar este comando')
    end
end)


function HavePerms(job)
    local result = MySQL.Sync.fetchAll("SELECT * FROM roda_components WHERE job = @job", {
        ['@job'] = job
    })
    if result[1] then 
        return true
    else
        return false
    end
end

RegisterCommand('darcomponentes', function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local group = xPlayer.group
    if group == 'admin' or group == 'superadmin' then 
        local targetJob = args[1]
        local havePerms = HavePerms(targetJob)
        if not havePerms then
            MySQL.Async.execute("INSERT INTO roda_components (job) VALUES (@job)", {
                ['@job'] = targetJob
            })
            xPlayer.showNotification('Se han dado permisos a ' .. targetJob)
        else
            xPlayer.showNotification('El trabajo ya tiene permisos')
        end
    else
        xPlayer.showNotification('No tienes permisos para ejecutar este comando')
    end
end)