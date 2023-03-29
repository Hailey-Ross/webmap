RegisterNetEvent("webmap:updateInfo")

AddEventHandler("webmap:updateInfo", function()
	local playerPed = PlayerPedId()
	local playerID = PlayerId()

	TriggerServerEvent("webmap:updateInfo", {
		name = GetPlayerName(playerID),
		pid = GetPlayerServerId(playerID),
		coords = GetEntityCoords(playerPed),
		heading = GetEntityHeading(playerPed),
		health = GetEntityHealth(playerPed)
	})
end)
