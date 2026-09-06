name "jcomp"
version "1.0.0"
author 'JavoPlus'

fx_version 'cerulean'
games { 'gta5' }

ui_page 'NUI/index.html'

client_script {
    'functions.lua'
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

files {
    'NUI/index.html',
    'NUI/style.css',
    'NUI/script.js',
    'NUI/assests/*',
    'NUI/assests/Advanced_Rifle/*',
    'NUI/assests/ap_pistol/*',
    'NUI/assests/Assault_Rifle/*',
    'NUI/assests/Assault_Rifle_Mk2/*',
    'NUI/assests/Assault_Shotgun/*',
    'NUI/assests/assault_smg/*',
    'NUI/assests/Bullpup_Rifle/*',
    'NUI/assests/Bullpup_Rifle_Mk2/*',
    'NUI/assests/Bullpup_Shotgun/*',
    'NUI/assests/Carbine_Rifle/*',
    'NUI/assests/Carbine_Rifle_Mk2/*',
    'NUI/assests/Ceramic_Pistol/*',
    'NUI/assests/Combat _PDW/*',
    'NUI/assests/Combat_MG/*',
    'NUI/assests/Combat_MG_Mk2/*',
    'NUI/assests/combat_pistol/*',
    'NUI/assests/Combat_Shotgun/*',
    'NUI/assests/Compact_Rifle/*',
    'NUI/assests/Grenade_Launcher/*',
    'NUI/assests/Gusenberg_Sweeper/*',
    'NUI/assests/heavy_pistol/*',
    'NUI/assests/heavy_r_mk_2/*',
    'NUI/assests/Heavy_Shotgun/*',
    'NUI/assests/Heavy_Sniper/*',
    'NUI/assests/Heavy_Sniper_Mk2/*',
    'NUI/assests/m_pistol/*',
    'NUI/assests/Marksman_Rifle/*',
    'NUI/assests/Marksman_Rifle_Mk2/*',
    'NUI/assests/MG/*',
    'NUI/assests/Micro_SMG/*',
    'NUI/assests/Military_Rifle/*',
    'NUI/assests/Mini_SMG/*',
    'NUI/assests/pistol/*',
    'NUI/assests/pistol_50/*',
    'NUI/assests/pistol_mk2/*',
    'NUI/assests/Pump_Shotgun/*',
    'NUI/assests/Pump_Shotgun_Mk2/*',
    'NUI/assests/smg/*',
    'NUI/assests/SMG_Mk2/*',
    'NUI/assests/Sniper_Rifle/*',
    'NUI/assests/SNS_Pistol/*',
    'NUI/assests/Special_Carbine/*'
}