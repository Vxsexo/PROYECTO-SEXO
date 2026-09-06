Config = {}

Config.Locale = GetConvar('esx:locale', 'en')
Config.OnlyFirstname = false
Config.EnableESXIdentity = true -- RP names

Config.Admins = {
    'mod',
    'admin',
    'superadmin',
}

Config.Jobs = {
    police = {
        prefix = 'POLICíA',
        icono = '👮',
        borderColor = '#0000FF',
        backgroundColor = 'rgba(36, 0, 166, 0.7)',
    },
    ambulance = {
        prefix = 'EMS',
        icono = '🚑',
        borderColor = '#FF0000',
        backgroundColor = 'rgba(255, 0, 0, 0.4)',
    },
}
