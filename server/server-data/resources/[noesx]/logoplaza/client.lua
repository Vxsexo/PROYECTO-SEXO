Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("al") then
                RequestStreamedTextureDict("al", true)
                while not HasStreamedTextureDictLoaded("al") do
                    Wait(1)
                end
        else
             DrawMarker(9, 215.22, -921.62, 67.7, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,false, false, 2, true, "al", "al_logo", false)
             --DrawMarker(9, 245.58, -757.34, 42.17, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,fasle, false, 2, true, "al", "al_logo", false)
         
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("psique") then
                RequestStreamedTextureDict("psique", true)
                while not HasStreamedTextureDictLoaded("psique") do
                    Wait(1)
                end
        else
             DrawMarker(9, 1377.83, -721.6, 70.2, -25.0, -130.0, 0.0, 90.0, 0.0, 0.0, 3.5, 1.5, 15.0, 255, 255, 255, 255,false, false, 2, false, "psique", "al_logo", false)
             --DrawMarker(9, 245.58, -757.34, 42.17, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,fasle, false, 2, true, "al", "al_logo", false)
         
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("uwu") then
                RequestStreamedTextureDict("uwu", true)
                while not HasStreamedTextureDictLoaded("uwu") do
                    Wait(1)
                end
        else
             DrawMarker(9, -135.3322, -252.2214, 50.8065, 180.0, -70.0, 0.0, 90.0, 0.0, 0.0, 4.0, 4.0, 20.0, 255, 255, 255, 255,false, false, 2, false, "uwu", "al_logo", false)
             --DrawMarker(9, 245.58, -757.34, 42.17, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,fasle, false, 2, true, "al", "al_logo", false)
         
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("mono1") then
                RequestStreamedTextureDict("mono1", true)
                while not HasStreamedTextureDictLoaded("mono1") do
                    Wait(1)
                end
        else
             DrawMarker(9, -121.3041, 949.3712, 236.7097, 41.5, 45.0, 0.0, 90.0, 0.0, 0.0, 4.75, 2.75, 15.0, 255, 255, 255, 255,false, false, 2, false, "mono1", "al_logo", false)
             --DrawMarker(9, 245.58, -757.34, 42.17, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,fasle, false, 2, true, "al", "al_logo", false)
         
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("mono2") then
                RequestStreamedTextureDict("mono2", true)
                while not HasStreamedTextureDictLoaded("mono2") do
                    Wait(1)
                end
        else
             DrawMarker(9, -114.1238, 985.3805, 243.7031, -120.0, -50.0, 0.0, 90.0, 0.0, 0.0, 4.75, 2.75, 15.0, 255, 255, 255, 255,false, false, 2, false, "mono2", "al_logo", false)
             --DrawMarker(9, 245.58, -757.34, 42.17, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,fasle, false, 2, true, "al", "al_logo", false)
         
        end
    end
end)

--[[
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if not HasStreamedTextureDictLoaded("reina") then
                RequestStreamedTextureDict("reina", true)
                while not HasStreamedTextureDictLoaded("reina") do
                    Wait(1)
                end
        else
             DrawMarker(9, 2418.52, 4477.23, 45.81, 295.0, 0.0, 0.0, 90.0, 180.0, 80.0, 30.0, 13.0, 20.0, 255, 255, 255, 255,false, false, 2, false, "reina", "al_logo", false)
             --DrawMarker(9, 245.58, -757.34, 42.17, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, 13.0, 13.0, 20.0, 255, 255, 255, 255,fasle, false, 2, true, "al", "al_logo", false)
         
        end
    end
end)--]]