Config = {
    developMode = false, -- you dor example start race alone and you will see the arena marker if you have enabled
    Locale = 'de',
    lobbyTimeInSec = 60, -- the time that players have to register
    useESX_XP = false, -- if you use esx_esp mod you have to set this value to true
    repairItemsCheckInSeconds = 30, -- how often repairKits will check, if they exist and new ones spawn
    noFlyArea = { -- You see a blip on map and a spear where players not have to fly in, to prevent crashing into the arena interior
        {
            coordinate = vector3(2799.7351074219,-3799.8552246094,144.1003036499), -- position of the location
            enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
            display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
            sprite = 429, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
            scale = 1.5, -- scale of blip
            color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
            name = 'No Fly Area', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
            marker = 28, -- marker type see https://docs.fivem.net/docs/game-references/markers/
            style = {
                scale = 450.0, -- radius of arena
                rgba = { 250, 0, 0, 155 }, -- color of marker
            },
            viewZone = true, -- enable the spear
        }
    },
    events = {
        esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
        stopRealisticVehicleDamage = 'TBM_DD::StopRealisticVehicleDamage',
        startRealisticVehicleDamage = 'TBM_DD::StartRealisticVehicleDamage',
        seatBeltPlayer = 'TBM_DD::SeatBeltPlayer',
    },
    stadium = {  -- you can here configure different interior for the arena. See possible combinations in readme.md under "How to load and configure stadium map"

        scene = "dystopian",
        map = "Set_Dystopian_01",
    },
    tracks = {
        {
            canUseTeleportToArenaLeavePoint = true, -- there is an emergency teleport that players can use in arena area, if they have not started the race to teleport to leave point of arena.
            maxPortHeightRange = 40,
            minCountOfPlayers = 2, -- How many players are needed for the race
            playerMustUseTheirOwnCar = false, -- if true players need to be in a vehicle to register for that race, not recommended if you use a location where players can not escape with her vehicle
            raceStartCountdownLength = 3, -- length of countdown before race
            raceFee = 5000, -- how mush the player must pay for the race
            howManyPlayersGetWin = 2, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            maxRaceDurationInSeconds = 900, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            startRaceLocation = { --Where players can start the race
                coordinate = vector3(2842.162109375,-3910.6218261719,151.0086517334), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Big Arena', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 4.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 84.0  -- the orientation of the ped
            },
            enterPoint = { -- is optional but needed when you use leavePoint, can be used to teleport players into a building
                coordinate = vector3(-278.54107666016,-1919.0435791016,28.946044921875), -- position of the location
                enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Big Arena Enter', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 2.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 339.0  -- the orientation of the ped
            },
            leavePoint = { -- optional, but needed if you use enterPoint, teleports player back to entrypoint
                coordinate = vector3(2840.0615234375,-3917.3295898438,155.87657165527), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Big Arena Enter', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 2.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = false, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 84.0  -- the orientation of the ped
            },
            highScore = { -- Where player can see her race results
                coordinate = vector3(2835.6101074219,-3910.6064453125,151.00854492188), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 304, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Big Arena', -- The blip name on map
                radius = 4.0, -- Radius of the action to view the high score
                viewZone = true, -- view zone in game, if true marker, rgba and subMarker is needed
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 590.202, -- z position of the subMarker
                },
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_m_y_juggalo_01", -- ped model, see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0x91CA3E2C, -- ped hash, see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 272.0 -- orientation of the ped
            },
            arena = { -- The place where the race happens
                coordinate = vector3(2799.7351074219,-3799.8552246094,144.1003036499), -- should be the midpoint of the location
                viewZone = false, -- view zone in game, if true marker, rgba and subMarker is needed
                marker = 25, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                style = {
                    scale = 400.0, -- radius of arena
                    rgba = { 120, 255, 120, 155 }, -- color of marker
                },
            },
            repairKits = { -- items that are spawn what can players collect and repair the vehicle
                stopSpawnAfterTimeInSeconds = 60, -- Spawn items will not longer spawn after this time is exceeded
                items = { -- you can configure as many items you want
                    {
                        maxValue = 50, -- max repair value of vehicle. Highest health of vehicle is 1000.0
                        minValue = 10, -- min repair value of vehicle. Highest health of vehicle is 1000.0
                        marker = 3, -- checkpoints type see https://docs.fivem.net/docs/game-references/checkpoints/
                        style = {
                            scale = 2.0, -- radius of marker and the near that the player must have to take the item
                            rgba = { 10, 29, 200, 155 }, -- color of marker
                        },
                        viewZone = true -- make the marker invisible
                    },
                },
                repairKitPositions = { -- positions of the repair items
                    vector3(2774.9333496094,-3862.2111816406,137.46627807617),
                    vector3(2927.1447753906,-3796.7099609375,126.82914733887),
                    vector3(2674.2163085938,-3798.7451171875,126.828956604),
                    vector3(2832.8132324219,-3886.2358398438,138.80934143066),
                    vector3(2803.5476074219,-3800.2937011719,102.83931732178),
                    vector3(2921.830078125,-3829.8352050781,137.23002624512),
                    vector3(2840.4978027344,-3765.0920410156,121.04628753662),
                    vector3(2640.0561523438,-3781.189453125,138.80009460449),
                    vector3(2786.7746582031,-3760.74609375,115.08397674561),
                    vector3(2788.6083984375,-3839.8369140625,115.09994506836),
                    vector3(2876.8093261719,-3800.7282714844,121.47300720215),
                    vector3(2721.2443847656,-3799.9362792969,122.30039978027),
                    vector3(2755.4069824219,-3687.2849121094,139.48294067383),
                },
                maxRepairItemsAtSameTime = 1, -- The max. number of repairKits at the same time
            },
            vehicles = {
                {
                    type = 'marshall', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                    canLeaveVehicle = false, -- is recommended to set to true if you use a motorcycle, attention players can die at the race
                },
                {
                    type = 'monster', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                    canLeaveVehicle = false, -- is recommended to set to true if you use a motorcycle, attention players can die at the race
                },
            },
            vehicleSpawn = {  -- race starting position
                {
                    coord = vector3(2917.0405273438,-3867.8869628906,139.82719421387), -- Coordinate of starting points, you can add so many as you want
                    heading = 76.3,
                },
                {
                    coord = vector3(2925.2810058594,-3807.7954101563,138.29689025879), -- Coordinate of starting points, you can add so many as you want
                    heading = 82.0,
                },
                {
                    coord = vector3(2658.9555664063,-3810.0908203125,127.84578704834), -- Coordinate of starting points, you can add so many as you want
                    heading = 191.0,
                },
                {
                    coord = vector3(2921.7604980469,-3737.0571289063,139.82232666016), -- Coordinate of starting points, you can add so many as you want
                    heading = 92.0,
                },
                {
                    coord = vector3(2694.7937011719,-3734.1938476563,139.82333374023), -- Coordinate of starting points, you can add so many as you want
                    heading = 267.0,
                },
                {
                    coord = vector3(2667.3493652344,-3801.65625,139.02680969238), -- Coordinate of starting points, you can add so many as you want
                    heading = 269.0,
                },
                {
                    coord = vector3(2693.8315429688,-3866.3071289063,139.82327270508), -- Coordinate of starting points, you can add so many as you want
                    heading = 280.0,
                },
                {
                    coord = vector3(2738.591796875,-3800.0815429688,106.46014404297), -- Coordinate of starting points, you can add so many as you want
                    heading = 183.0,
                },
                {
                    coord = vector3(2930.408203125,-3796.3122558594,127.83016967773), -- Coordinate of starting points, you can add so many as you want
                    heading = 17.0,
                },
                {
                    coord = vector3(2811.7243652344,-3801.5053710938,103.83113861084), -- Coordinate of starting points, you can add so many as you want
                    heading = 88.0,
                },
                {
                    coord = vector3(2861.3002929688,-3802.8835449219,106.4937286377), -- Coordinate of starting points, you can add so many as you want
                    heading = 179.0,
                },
                {
                    coord = vector3(2794.8093261719,-3912.9006347656,139.48294067383), -- Coordinate of starting points, you can add so many as you want
                    heading = 0.0,
                },
                {
                    coord = vector3(2764.62890625,-3912.7858886719,139.482849121093), -- Coordinate of starting points, you can add so many as you want
                    heading = 0.0,
                },
                {
                    coord = vector3(2765.1176757813,-3687.2468261719,139.74066162109), -- Coordinate of starting points, you can add so many as you want
                    heading = 180.0,
                },
                {
                    coord = vector3(2805.1870117188,-3687.2629394531,139.7409362793), -- Coordinate of starting points, you can add so many as you want
                    heading = 180.0,
                },
                {
                    coord = vector3(2835.1240234375,-3687.2194824219,139.74090576172), -- Coordinate of starting points, you can add so many as you want
                    heading = 180.0,
                },
            },
            objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                --    {
                --        coords = vector3(1057.5803222656, 103.69068908691, 81.261016845703),
                --        pitch = 0.0, -- The pitch of the object should be normally 0.0
                --        roll = 0.0, -- The roll of the object should be normally 0.0
                --        yaw = 60.0, -- rotation of the object
                --        name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                --    }
            },
            objectsToSpawnFile = 'track.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
    }
}
