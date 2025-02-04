local players = {}
Config.realm = UserRealm
Config.loggingToggle = logToggler
Config.testuserToggle = testuserToggle

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

if Config.portalToggle == true then
	SetHttpHandler(exports.httpmanager:createHttpHandler {
		authorization = {
			[Config.username] = Config.password
		},
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

else
	SetHttpHandler(exports.httpmanager:createHttpHandler {
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
end