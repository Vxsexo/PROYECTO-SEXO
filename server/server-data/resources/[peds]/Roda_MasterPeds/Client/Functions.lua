Language = Roda.Language
Framework = Roda.Framework




if Framework == 'esx' then 
    ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
elseif Framework == 'qbcore' then 
    QBCore = exports['qb-core']:GetCoreObject()
end

function GetDefaultPed()
    if Framework == 'esx' then 
        EsxGetSkin()
    elseif Framework == 'qbcore' then 
        GetQBCoreSkin()
    else
        ShowNoti('Config Error', Language['checkShared'])
    end
end

function EsxGetSkin()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        local model = nil
    
        if skin.sex == 0 then
          model = GetHashKey("mp_m_freemode_01")
        else
          model = GetHashKey("mp_f_freemode_01")
        end
    
        RequestModel(model)
        while not HasModelLoaded(model) do
          RequestModel(model)
          Citizen.Wait(1)
        end
    
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
    
        TriggerEvent('skinchanger:loadSkin', skin)
    end)
end


function GetQBCoreSkin()
    TriggerServerEvent("qb-clothes:loadPlayerSkin") 
end


function ShowNoti(title, cuerpo) 
    SendNUIMessage({
        action = 'showNoti',
        tituloxD = title,
        cuerpoxD = cuerpo
    })
end
