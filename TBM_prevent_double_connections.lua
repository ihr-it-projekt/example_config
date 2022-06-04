Config = {
    checkInterval = 60, -- Value is in seconds. How often the player double connection will checked. You can increase that value. But if this value is to high yor player can get problems when he reconnect
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
    }
}
