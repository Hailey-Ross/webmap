fx_version "cerulean"
games {"gta5", "rdr3"}
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

name "webmap"
author "kibukj | Fork by Hailey"
description "Live map for FiveM and RedM servers"
url "https://github.com/Hailey-Ross/webmap"

dependency "httpmanager" -- https://github.com/kibook/httpmanager

-- You can comment this out if you turn off Display Weather in Config
dependency "weathersync" 

server_scripts {
	"config.lua",
	"server.lua"
}

client_script "client.lua"

version '0.1.1'
vorp_checker 'yes'
vorp_name '^4Resource version Check^3'
vorp_github 'https://github.com/Hailey-Ross/webmap'