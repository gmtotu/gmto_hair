-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }
author 'gmtotu'
version '1.0.0'

-- What to run
client_scripts {
    'client/client.lua'
}
server_script { 
    'server/server.lua'
}
shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    '@es_extended/imports.lua'
}

lua54 'yes'