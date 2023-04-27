fx_version 'cerulean'
game 'gta5'

description 'Japanse Cafe Job By RPG'

version '1.0'

shared_scripts {
    'config.lua',
}

client_scripts {
	'client/main.lua',
	'client/menu.lua'
}

server_scripts {
    'server/*.lua',
    '@oxmysql/lib/MySQL.lua',
}