Config = {}

Config.CustomCommand = {
    ['command'] = 'openscoreboard', -- Command for open the scoreboard
    ['keybind'] = 'F10' -- Key for open the scoreboard.
}

Config.Jobs = { --Here you can add the jobs count that you want to display in scoreboard.
    {label = '👮 Policia', job = 'police', color = 'blue'}, -- You can put the color that you want, hex, rgb, or name.
    {label = '🚕 Taxi', job = 'taxi', color = 'yellow'},
    {label = '🚑 EMS', job = 'ambulance', color = '#FF0000'},
    {label = '🔧 Mecanico', job = 'mechanic', color = 'orange'},
    {label = '⚫ Swatt', job = 'swatt', color = 'black'}
}


Config.Robos = { -- Here you can add the robberies that you want to display in scoreboard.
    {label = 'JOYERIA', job = 'police', required = 4},  -- You can put a job count checker for the status.
    {label = 'HUMANE', job = 'swatt', required =  6}, 
    {label = 'TIENDAS', job = 'police', required = 3}, -- For example you can robbery only if there are 6 or more "police".
    {label = 'POLLERIA', job = 'swatt', required = 7},
    {label = 'FLECCA', job = 'police', required = 4},
    {label = 'FACEBOOK', job = 'Police', required = 6},
    {label = 'BANCO CENTRAL', job = 'police', required = 8},
    {label = 'CASINO', job = 'police', required = 8},
}