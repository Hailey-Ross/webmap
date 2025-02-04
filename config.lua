Config = {}

-- How often the server queries information from clients
Config.updateInterval = 5000

-- Enable or disable weather info on the live map (requires weathersync if enabled)
Config.displayWeather = true

-- Enable or disable Logging of user logins (debug/coming soon/Unimplemented at this time)
Config.loggingToggle = false
Config.logFilename = "log"

--[[ 
--     --     --     --     --     --     --     --     --     --     --     -- 
-- Username / Password pair for using the WebPanel.
-- Generate Hashes at http://YourServerIP:YourServerPort/httpmanager/password/
-- Portal Toggle enables Password Protection. true is on, false is off.
-- Default Username 'default' 
-- Default Password 'password' 
-- Password Hash "$2a$11$HoxJPx5sTe4RX5qPw1OkSO.ukDdwAvGJwXtmyOE5i.1gz7EvN71.q"
--     --     --     --     --     --     --     --     --     --     --     -- 
-- ]]
Config.portalToggle = false -- true enables the Password Protection | false to disable
Config.username = "default" -- Can be entered as plain text
Config.password = "$2a$11$HoxJPx5sTe4RX5qPw1OkSO.ukDdwAvGJwXtmyOE5i.1gz7EvN71.q" --THIS MUST BE HASHED - SEE ABOVE COMMENTING BLOCK