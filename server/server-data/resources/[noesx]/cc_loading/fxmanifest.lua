shared_script '@WaveShield/resource/waveshield.lua' --this line was automatically written by WaveShield



fx_version 'adamant'
game 'gta5'

author 'highrider#2873'
description 'RetornoRP-Loading'
version '0.1'

files {
    '*.html',
    'assets/**/*.*',
    'assets/**/**/*.*'
}

client_script 'assets/client.lua'

--loadscreen_manual_shutdown "yes"
loadscreen 'index.html'