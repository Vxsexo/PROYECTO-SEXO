local WaitTime = 1500 -- How often do you want to update the status (In MS)
local appid = '1126171190793355285' -- Make an application @ https://discordapp.com/developers/applications/ ID can be found there.
local asset = 'g512' -- Go to https://discordapp.com/developers/applications/APPID/rich-presence/assets

function SetRP()
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())

    SetDiscordAppId('1126171190793355285')
	SetDiscordRichPresenceAsset('logo1')
	SetDiscordRichPresenceAssetText('logo2')
	SetDiscordRichPresenceAssetSmall('logo1')
	SetDiscordRichPresenceAssetSmallText('logo2')
	SetDiscordRichPresenceAction(0, "Ingresar al Servidor!", "fivem://connect/cfx.re/join/qo69zz") -- Button 1, config: 0 = number of button 0-1 / Button Text / Link that opens when you click button
    SetDiscordRichPresenceAction(1, "Ingresar al Discord!", "https://discord.com/invite/retornorp")
     
end


Citizen.CreateThread(function()

	SetRP()

	while true do
		local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
		if VehName == "NULL" then VehName = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))) end
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
		local StreetHash = GetStreetNameAtCoord(x, y, z)
		local pId = GetPlayerServerId(PlayerId())
		local pName = GetPlayerName(PlayerId())
		local playerCount = #GetActivePlayers()

		Citizen.Wait(WaitTime)

		SetRP()
		
		if StreetHash ~= nil then
			StreetName = GetStreetNameFromHashKey(StreetHash)
			if IsPedOnFoot(PlayerPedId()) and not IsEntityInWater(PlayerPedId()) then
				
				if IsPedRunning(PlayerPedId()) then
					SetRichPresence(pId.." | "..pName.." esta corriendo en "..StreetName)
				elseif IsPedWalking(PlayerPedId()) then
					SetRichPresence(pId.." | "..pName.." esta hablando en "..StreetName)
				elseif IsPedStill(PlayerPedId()) then
					SetRichPresence(pId.." | "..pName.." esta parado en "..StreetName.."")
				end
			end
		end
	end
end)