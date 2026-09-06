Config = {}
Config.Sound = true -- Enable/Disable dispatch sounds
Config.Framework = 'ESX' -- 'ESX' or 'QBCore'
Config.Locale = 'es' -- Language 'en' or 'es'
Config.ShootingAlerts = true -- Enable/Disable Shooting alerts
Config.Measurement = true -- True = Metric False = Imperial
Config.ShootingCooldown = 30 -- Seconds
Config.BlipDeletion = 30 -- Seconds

Config.CommandShow = {
    command = 'dispatch',
    description = 'Abrir Dispatch'
}

Config.VehicleRob = {
    command = 'vehrob',
    description = 'Robo de vehiculos'
}

Config.CommandPanic = {
    command = 'panico',
    description = 'Boton de emergencia'
}

Config.CommandClear = {
    command = 'borraralertas',
    description = 'Borrar alertas'
}

Config.DispatcherJob = 'police'
Config.Jobs = {'police', 'ambulance', 'mechanic' }
Config.DefaultDispatchNumber = '0A-00'

Config.AllowedJobs = {
    ["police"] = {
        name = 'police',
        label = 'LSPD',
        command = 'entorno',
        descriptcommand = 'Enviar una alerta a la policia',
        panic = true
    },
    ["ambulance"] = {
        name = 'ambulance',
        label = 'EMS',
        command = 'auxilio',
        descriptcommand = 'Enviar una alerta a los ems',
        panic = true
    },
    ["mechanic"] = {
        name = 'mechanic',
        label = 'Mecanico',
        command = 'ayuda',
        descriptcommand = 'Enviar una alerta a los mecanicos',
        panic = true
    }
}
