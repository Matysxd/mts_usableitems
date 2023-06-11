fx_version 'cerulean'
games {'gta5'}

Author 'Matys#0498'
description 'A small script with some small addons like Armour, Cloth to clean closest car etc... and fully configureable config'
version '1.0.0'

lua54 'yes'


client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

dependencies {
	'/server:6116',
	'oxmysql',
	'ox_lib'
}