Config = {
    messages = { -- messages that the player got
        double_connection_detected = 'Doppelte Verbindung erkannt. Du wurdest reportet.', -- if a player has tow connections to server
        no_player_ids_found = 'Deine Discord oder SteamId oder Rockstar ID konnte nicht gelesene werden.' -- if no steam or licence or discord id can be found, player got this message
    },
    discord = { -- Discord configuration
        enableLog = true, -- enable log to discord
        webhookUrl = '', -- create a webhock url an paste the link here in
        color = '5015295', -- color of message
        messageTitle = 'Double connection discovered', -- Discord message title
        message = 'Player Data: ', -- prefix in discord message. Player data will automatically appended
    },
    banOptions = {
        banPlayerInTBMInGameWhiteList = false, -- If you have my mod: TBM In Game Whitelist (https://thebusters-shop.tebex.io/package/5070248). The player can be baned there.
    },
    ignoreSteamId = false, -- if true steam id will not checked
    ignoreDiscordId = false, -- if true discord id will not checked
    ignoreLicenceId = false, -- if true licence id wil not checked
    EventsThatShouldTriggerDoubleConnectionDetected = { -- you can add here as many events you want. They will trigger a server side event with parameters: TriggerEvent(yourEventName, playerIdentityData), Take a look into readme for closer informations
        {
            name = 'yourEventName', -- The event name
            active = true, -- enable or disable sending, values are true or false
        },
    },
}
