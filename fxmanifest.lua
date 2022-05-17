fx_version 'cerulean'
games { 'gta5' }

author 'Marcelo Silva - Tugamars'
description "pma-voice radio list"
version '1.0.0'

client_scripts {
    'client.lua'
}

server_script 'server.lua'

ui_page 'nui/index.html'

files({
    'nui/index.html',
    'nui/**/*.png',
    'nui/**/*.css',
    'nui/**/*.js',
    'nui/**/*.json',
})