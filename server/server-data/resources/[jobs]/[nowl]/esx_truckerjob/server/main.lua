ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('esx_truckerjob:pay')
AddEventHandler('esx_truckerjob:pay', function(payment)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(tonumber(payment))
end)