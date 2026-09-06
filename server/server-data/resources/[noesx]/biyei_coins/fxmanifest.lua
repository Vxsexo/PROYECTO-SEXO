--------------------------------------
------Created By Biyei------
--https://fivem-biyei.tebex.io--
--------------------------------------
fx_version 'adamant'
game 'gta5'
lua54 'yes'
author 'Biyei'
description 'Biyei Coins + Reward System'
version '1.5.0'
shared_scripts {
    'config.lua'
}
client_script 'client/*.lua'
server_script 'server/*.lua'
ui_page 'html/index.html'
escrow_ignore {
    'config.lua'
}
files {
    'html/index.html',
    'html/index.js',
    'html/*.otf',
    'html/style.css',
    'html/reset.css',
    'html/select.css'
}
dependency '/assetpacks'