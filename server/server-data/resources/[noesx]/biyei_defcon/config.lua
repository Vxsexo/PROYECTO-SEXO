Config = {}

Config.Framework = 'esx' --- You can change Framework 'esx' or 'qb-core'
Config.UseBiyeiHud = true --- If you use my hud set it to true, if you don't use it set it to false, this is to hide it when you open the pause menu.

-- To Show
-- TriggerClientEvent('biyei_hud:mostrar')
-- To Hide
-- TriggerClientEvent('biyei_hud:ocultar')

Config.DefconJobs = {
    ["police"] = "1", ------- ["job"] = "grade",
    ["ambulance"] = "2",
}

Config.DefconTypes = {
    [1] = { "#AAAAAA" },
    [2] = { "#FF0000" },
    [3] = { "#C6B72B" },
    [4] = { "#008000" },
    [5] = { "#0000FF" },
}

