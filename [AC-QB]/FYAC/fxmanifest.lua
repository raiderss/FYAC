fx_version 'adamant'
games {'gta5'}


ui_page {
	'index.html'
}


files {
    'index.html'
}



client_scripts {
	'configs/sharedconfig.lua',
	'configs/clientconfig.lua',
	'client/*.lua'
}

server_scripts {
	-- '@mysql-async/lib/MySQL.lua',
	'configs/*.lua',
	'tables/*.lua',
	'check.js',
	'server/*.lua'
}

lua54 'yes'

dependency 'yarn'


