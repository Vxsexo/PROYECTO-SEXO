print("^9---------------------------------------------------^0")
print("^6Canario Shop | Copy Coords^0")
print("^6Creador: SirCanario#2866^0")
print("^6Canario Shop: https://discord.gg/XqWrFymfzP^0")
print("^6Canario Host: https://canario-hosting.com/^0")
print("^9---------------------------------------------------^0")

ESX = nil

Citizen.CreateThread(function()

	while ESX == nil do

		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

		Citizen.Wait(0)

	end

end)