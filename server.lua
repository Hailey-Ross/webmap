local players = {}
-- testuser has Password of 'test' and username of 'admin' | unused at this time/TODO Later
local testuser = ["admin"] = "$2a$11$xJi6ZPxGZ2KVoBYMNZZkpOhknGzcjLjgFByfSUXBtFt0lYj9yQUzW"
local Config.realm = UserRealm
local Config.loggingToggle = logToggler
local Config.testuserToggle = testuserToggle

--[[if testuserToggle == true then
	!!TODO!!
	Add ability for config to set user or use default from above.
	blah blah blah code here
end]]

RegisterNetEvent("webmap:updateInfo")

local function prunePlayers()
	for player, info in pairs(players) do
		if not GetPlayerEndpoint(player) then
			players[player] = nil
		end
	end
end

AddEventHandler("playerDropped", function(reason)
	players[source] = nil
end)

AddEventHandler("webmap:updateInfo", function(playerInfo)
	players[source] = playerInfo
end)

Citizen.CreateThread(function()
	print("Access your live map at: " .. exports.httpmanager:getUrl())

	while true do
		prunePlayers()
		TriggerClientEvent("webmap:updateInfo", -1)
		Citizen.Wait(Config.updateInterval)
	end
end)

SetHttpHandler(exports.httpmanager:createHttpHandler {
	authorization = UserRealm,
	log = logToggler,
	logFile = Config.logFilename .. ".json",
	routes = {
		["^/info.json$"] = function(req, res, helpers)
			local data = {}

			data.serverName = GetConvar("sv_projectName", GetConvar("sv_hostname", "Server Name"))
			data.players = players

			if Config.displayWeather then
				data.time = exports.weathersync:getTime()
				data.weather = exports.weathersync:getWeather()
				data.wind = exports.weathersync:getWind()
				data.forecast = exports.weathersync:getForecast()
			end

			res.sendJson(data)
		end,
		["^/config.json$"] = function(req, res, helpers)
			res.sendJson {
				gameName = GetConvar("gamename", "gta5"),
				displayWeather = Config.displayWeather
			}
		end
	}
})
