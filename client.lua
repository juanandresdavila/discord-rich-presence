-- Discord
Citizen.CreateThread(function()
    
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(5*1000)

        SetDiscordAppId(0) -- Replace 0 with your application client id.

        -- Where the player is located
        SetRichPresece( GetPlayerName(source).. "en la calle".. GetStreetNameFromHashKey( table.unpack ( GetEntityCoords(player) )) )

        
        SetDiscordRichPresenceAsset("logo") -- The name of the big picture you added in the application.
        SetDiscordRichPresenceAssetText("Jugador: " .. GetPlayerName(source))

        SetDiscordRichPresenceAssetSmall("logo") -- The name of the small picture you added in the application.
        SetDiscordRichPresenceAssetSmallText("Ping: " .. GetPlayerPing(source))
        
    end

end)
