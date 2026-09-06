--------------------------------------
------Created By Biyei------
--https://fivem-biyei.tebex.io--
--------------------------------------
fx_version 'adamant'
game 'gta5'
lua54 'yes'
author 'Biyei'
description 'Biyei Defcon'
version '1.0.2'
shared_scripts {
    'config.lua'
}
client_scripts {
    'client/*.lua'
}
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'integrations/sv_notify.lua',
    'server/*.lua',
}
ui_page 'html/index.html'
escrow_ignore {
    'config.lua',
    'integrations/sv_notify.lua'
}
files {
    'html/index.html',
    'html/index.js',
    'html/style.css',
}
dependency '/assetpacks'