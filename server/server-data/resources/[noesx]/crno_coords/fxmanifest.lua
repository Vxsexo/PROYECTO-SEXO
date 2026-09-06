fx_version 'adamant'

game 'gta5'

version '1.3.1'

ui_page 'html/index.html'


client_script {
	'@es_extended/locale.lua',
	'client/client.lua',
	'locales/es.lua',
	'config.lua'
}

server_script {
	'@es_extended/locale.lua',
	'server/server.lua',
	'locales/es.lua',
	'config.lua'
}

files {
	'html/index.html',
	'html/jquery.js',
	'html/init.js',
}
