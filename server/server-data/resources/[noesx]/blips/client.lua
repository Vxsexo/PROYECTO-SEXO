local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=}, 

   {title="McDonalds", colour=0, id=96, x = 271.007, y = -962.732, z = 29.288},  
   {title="KFC", colour=0, id=93, x = -255.432, y = -968.16, z = 32.331}, 
   {title="Sirenitas", colour=0, id=121, x = 133.722, y = -1305.416, z = 29.162},  
   {title="Mi Barrunto", colour=0, id=317, x = -1807.517, y = -1184.228, z = 13.051}, 
   {title="Burguer King", colour=0, id=362, x = -1183.982, y = -874.608, z = 13.873},   
   {title="Joyeria", colour=0, id=617, x = -632.345, y = -238.346, z = 38.076},  
  }
  
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)