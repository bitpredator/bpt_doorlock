-- FX Information
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

-- Resource Information
name 'bpt_doorlock'
version '1.0.0'
license 'MIT'
author 'bitpredator'
repository 'https://github.com/bitpredator/bpt_doorlock'

-- Manifest
shared_script {
    '@ox_lib/init.lua',
    'config.lua',
}

client_script {
    'client/main.lua',
    'client/utils.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/convert.lua',
    'server/framework/*.lua',
    'server/main.lua',
}

ui_page 'web/build/index.html'

files {
    'web/build/index.html',
    'web/build/**/*',
    'loacales/*.json',
    'audio/data/bptdoorlock_sounds.dat54.rel',
    'audio/dlc_bptdoorlock/bptdoorlock.awc',
}

data_file 'AUDIO_WAVEPACK' 'audio/dlc_bptdoorlock'
data_file 'AUDIO_SOUNDDATA' 'audio/data/bptdoorlock_sounds.dat'

dependencies {
    'oxmysql',
    'ox_lib'
}