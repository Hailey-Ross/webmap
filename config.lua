Config = {}

-- How often the server queries information from clients
Config.updateInterval = 5000

-- Enable or disable weather info on the live map (requires weathersync if enabled)
Config.displayWeather = false

-- Enable or disable Logging of user logins (debug/coming soon)
Config.loggingToggle = false
Config.logFilename = "log"

-- COMING SOON/TODO
Config.testuserToggle = false -- Coming Soon / Don't Touch

-- Realm deseired for authorization from httpmanagers realms.lua file
-- Leave blank as "" to disable password protections with this method
Config.realm = "realm1"