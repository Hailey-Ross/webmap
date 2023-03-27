RegisterNetEvent("webmap:updateInfo")

AddEventHandler("webmap:updateInfo", function()
	--local playerPed = PlayerPedId()

	TriggerServerEvent("webmap:updateInfo", {
		name = GetPlayerName(PlayerId()),
		coords = GetEntityCoords(PlayerId()),
		heading = GetEntityHeading(PlayerId()),
		health = GetEntityHealth(PlayerId())
	})
end)
