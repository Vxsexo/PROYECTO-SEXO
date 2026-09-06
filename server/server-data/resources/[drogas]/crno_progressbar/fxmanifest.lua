fx_version 'cerulean'
games { 'gta5' }

author 'SirCanario#2866'
discord 'https://discord.gg/XqWrFymfzP'

ui_page 'html/ui.html'

files {
    'html/*.html',
    'html/js/*.js',
    'html/css/*.css'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/server.lua'
}

exports {
	'Progress'
}server_scripts { '@mysql-async/lib/MySQL.lua' }