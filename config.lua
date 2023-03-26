Config = {}

-- How often the server queries information from clients
Config.updateInterval = 5000

-- Enable or disable weather info on the live map (requires weathersync if enabled)
Config.displayWeather = true

-- Enable or disable Logging of user logins (debug/coming soon/Unimplemented at this time)
Config.loggingToggle = false
Config.logFilename = "log"

--[[ 
-- Username / Password pair for using the WebPanel.
-- Generate Hashes at http://YourServerIP:YourServerPort/httpmanager/password/
-- Default Username 'default' 
-- Default Password 'password' 
-- Password Hash "$2a$11$HoxJPx5sTe4RX5qPw1OkSO.ukDdwAvGJwXtmyOE5i.1gz7EvN71.q"
--
-- Portal Toggle enables Password Protection. true is on, false is off.
-- ]]
Config.portalToggle = false
Config.username = "default"
Config.password = "$2a$11$HoxJPx5sTe4RX5qPw1OkSO.ukDdwAvGJwXtmyOE5i.1gz7EvN71.q"