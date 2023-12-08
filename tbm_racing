Config = {
    Locale = 'de',
    esxExtendedName = 'es_extended', -- How you have named your es_extended mod, if you have renamed it.
    useLegacyFuel = false, -- if you are using Legacy fuel mod, you have to set this value to true
    useSNAFuel = false, -- if you are using SNA fuel mod, you have to set this value to true
    checkPointSound = { -- sound that will be played if a player pass a checkpoint see: https://docs.fivem.net/natives/?_0x67C540AA08E4A6F5
        soundId = 'HACK_SUCCESS',
        audioName = 'DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS'
    },
    lobbyTimeInSec = 2,
    viewRangeForMarkers = 100, -- Player must be in this range that all markers will be rendered
    cititzenWaitTimeForMarkers = 5, -- enter here a lower value if markers flickering
    useESX_XP = false, -- if you use esx_esp mod you have to set this value to true
    xperience = false, -- if you use xperience (https://github.com/Mobius1/xperience)  mod you have to set this value to true
    useQbCore = false, -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
    esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
        setJob = 'esx:setJob',
        playerLoaded = 'esx:playerLoaded',
        sendMessage = 'esx:showNotification',
        addGroupCommand = 'es:addGroupCommand',
    },
    qbCoreExportName = 'qb-core', -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
    tracks = {
        {
            startRaceLocation = {
                coordinate = vector3(-202.79821777344, 4190.3139648438, 43.058006286621), -- position of the location
                enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 0.7, -- scale of blip
                color = 62, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Wild River (für 4 Spieler)', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 2.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 96.0  -- the orientation of the ped
            },
            highScore = {
                coordinate = vector3(-200.92852783203, 4194.7670898438, 43.212902069092), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 304, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Wild River Leaderboard', -- The blip name on map
                radius = 2.0, -- Radius of the action to view the high score
                viewZone = true, -- view register register zone in game, if true marker, rgba and subMarker is needed
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 590.202, -- z position of the subMarker
                },
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_m_y_juggalo_01", -- ped model, see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0x91CA3E2C, -- ped hash, see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 96.0 -- orientation of the ped
            },
            isSingleRace = false, -- if true only one player can do the race and you got an all time high score // if false so many player can do  multiple players can make the race. Player count depends on configured vehicle spawns
            isDriftRace = false, -- if the race is a drift race, the player withe the highest drift score win the race
            playerCanNotUseWeapons = true, -- if enabled, players can not use any weapon at race time
            playerMustUseTheirOwnCar = false, -- if true players need to be in a vehicle to register for that race
            showRouteOnMap = true, -- Display the track on map
            roundCount = 1, -- how many rounds will have the race
            raceStartCountdownLength = 3, -- length of countdown before race
            raceFee = 5000, -- how mush the player must pay for the race
            howManyPlayersGetWin = 3, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            itemsThatPlayerCanWin = { -- for single player races you need only one place to configure. Everybody that finish a track will get the configured items
                { -- Place 1
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
                { -- Place 2
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
                { -- Place 3
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
            },
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            playerGetMoneyWinIfIsSingleRace = false, -- Player get a win, if this race is a single player race- Multiplayer track get always a win
            maxRaceDurationInSeconds = 500, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            checkPoints = {
                coords = { -- coordinates of checkPoints
                    vector3(-190.94186401367, 4266.6059570313, 29.937660217285),
                    vector3(-270.32971191406, 4353.1376953125, 29.937660217285),
                    vector3(-345.05218505859, 4413.7504882813, 29.937660217285),
                    vector3(-440.5393371582, 4434.6186523438, 29.937660217285),
                    vector3(-505.70001220703, 4449.8784179688, 29.937660217285),
                    vector3(-605.01763916016, 4431.2768554688, 14.937660217285),
                    vector3(-716.87091064453, 4445.3798828125, 14.937660217285),
                    vector3(-797.22131347656, 4445.0883789063, 14.937660217285),
                    vector3(-866.54888916016, 4422.2119140625, 14.937660217285),
                    vector3(-924.1298828125, 4390.28125, 9.937660217285),
                    vector3(-993.40521240234, 4375.9204101563, 9.937660217285),
                    vector3(-1115.0010986328, 4400.2587890625, 9.937660217285),
                    vector3(-1185.5451660156, 4390.9125976563, 4.9376602172852),
                    vector3(-1286.6147460938, 4363.609375, 4.9376602172852),
                    vector3(-1362.1046142578, 4329.5830078125, 1.9376602172852),
                    vector3(-1483.6994628906, 4348.0205078125, 0.0),
                    vector3(-1591.9044189453, 4385.62109375, 0.0),
                    vector3(-1683.7098388672, 4474.4995117188, 0.0),
                    vector3(-1854.7204589844, 4629.8432617188, 0.0),
                    vector3(-1925.8786621094, 4768.0913085938, 0.0),
                    vector3(-1890.7540283203, 4823.2075195313, 0.0),
                    vector3(-1953.4895019531, 4888.599609375, 0.0),
                    vector3(-2023.3355712891, 4937.021484375, 0.0),
                    vector3(-2044.2463378906, 4842.76171875, 0.0),
                    vector3(-1898.3629150391, 4680.2299804688, 0.0),
                },
                radiusToPass = 10.0, -- Radius of the action to register
                style = {
                    marker = 6, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                    scale = 10.0, -- scale of marker https://docs.fivem.net/docs/game-references/markers/
                    rgba = { 120, 255, 120, 155 }, -- color of blip
                },
                maxDistanceToTrack = 500 -- max radius in meter that a player can be, has player a greater distance, the race will stop for this player
            },
            vehicles = {
                {
                    type = 'seashark3', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                },
                {
                    type = 'seashark', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                },
                {
                    type = 'seashark2', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                }
            },
            vehicleSpawn = {  -- race starting position, if race is not a single race you can define so many you want
                {
                    coord = vector3(-80.0, 4161.0, 29.4), -- Coordinate of starting points, you can add so many as you want
                    heading = 53.0,
                },
                {
                    coord = vector3(-96.0, 4151.0, 29.4), -- Coordinate of starting points, you can add so many as you want
                    heading = 53.0,
                },
                {
                    coord = vector3(-87.0, 4173.0, 29.4), -- Coordinate of starting points, you can add so many as you want
                    heading = 53.0,
                }, {
                    coord = vector3(-84.0, 4185.0, 29.4), -- Coordinate of starting points, you can add so many as you want
                    heading = 53.0,
                },
            },
            objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                {
                    coords = vector3(1057.5803222656, 103.69068908691, 81.261016845703),
                    pitch = 0.0, -- The pitch of the object should be normally 0.0
                    roll = 0.0, -- The roll of the object should be normally 0.0
                    yaw = 60.0, -- rotation of the object
                    name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                }
            },
            objectsToSpawnFile = 'example.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
        {
            startRaceLocation = {
                coordinate = vector3(2537.0588, 2627.6096, 36.9448), -- position of the location
                enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 0.7, -- scale of blip
                color = 62, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'GRAND SENORA (1-8 Fahrer)', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 10.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 96.1409  -- the orientation of the ped
            },
            highScore = {
                coordinate = vector3(2528.0640, 2639.0811, 36.9448), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 304, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Rangliste', -- The blip name on map
                radius = 2.0, -- Radius of the action to view the high score
                viewZone = true, -- view register register zone in game, if true marker, rgba and subMarker is needed
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 590.202, -- z position of the subMarker
                },
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_m_y_juggalo_01", -- ped model, see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0x91CA3E2C, -- ped hash, see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 183.1570 -- orientation of the pe
            },
            isSingleRace = false, -- if true only one player can do the race and you got an all time high score // if false so many player can do  multiple players can make the race. Player count depends on configured vehicle spawns
            isDriftRace = false, -- if the race is a drift race, the player withe the highest drift score win the race
            playerMustUseTheirOwnCar = true, -- if true players need to be in a vehicle to register for that race
            showRouteOnMap = true, -- Display the track on map
            roundCount = 1, -- how many rounds will have the race
            raceStartCountdownLength = 3, -- length of countdown before race
            raceFee = 100, -- how mush the player must pay for the race
            howManyPlayersGetWin = 3, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            itemsThatPlayerCanWin = { -- for single player races you need only one place to configure. Everybody that finish a track will get the configured items
                { -- Place 1
                    {
                        name = "",
                        isWeapon = false,
                        amount = 0,
                    },
                    {
                        name = "",
                        isWeapon = true,
                        amount = 0,
                    }
                },
                { -- Place 2
                    {
                        name = "",
                        isWeapon = false,
                        amount = 0,
                    },
                    {
                        name = "",
                        isWeapon = true,
                        amount = 0,
                    }
                },
                { -- Place 3
                    {
                        name = "",
                        isWeapon = false,
                        amount = 0,
                    },
                    {
                        name = "",
                        isWeapon = true,
                        amount = 0,
                    }
                },
            },
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            playerGetMoneyWinIfIsSingleRace = false, -- Player get a win, if this race is a single player race- Multiplayer track get always a win
            maxRaceDurationInSeconds = 500, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            checkPoints = {
                coords = { -- coordinates of checkPoints
                    vector3(2495.6882, 2797.1758, 46.7319),
                    vector3(2295.0505, 3022.1665, 45.7233),
                    vector3(2210.9275, 3248.6257, 47.4584),
                    vector3(1893.7909, 3318.2273, 43.2573),
                    vector3(1814.8823, 3306.6025, 42.0694),
                    vector3(1682.9825, 3539.1140, 35.0813),
                    vector3(1526.7346, 3745.3550, 33.9409),
                    vector3(1339.8958, 3667.5969, 32.7091),
                    vector3(1105.7434, 3629.4558, 33.3053),
                    vector3(868.6804, 3636.7097, 32.3686),
                    vector3(482.8524, 3585.2322, 32.7226),
                    vector3(408.1782, 3525.7961, 33.6837),
                    vector3(244.7406, 3352.1182, 38.6844),
                    vector3(212.9884, 3206.5325, 42.0787),
                    vector3(265.5760, 3133.7991, 41.9052),
                    vector3(369.5041, 3107.9351, 43.2002),
                    vector3(653.5441, 3074.5784, 43.6652),
                    vector3(990.7162, 3067.1890, 41.6307),
                    vector3(1497.6925, 3041.7158, 41.2454),
                    vector3(1730.6167, 3153.8008, 43.3758),
                },
                radiusToPass = 10.0, -- Radius of the action to register
                style = {
                    marker = 6, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                    scale = 10.0, -- scale of marker https://docs.fivem.net/docs/game-references/markers/
                    rgba = { 120, 255, 120, 155 }, -- color of blip
                },
                maxDistanceToTrack =  800 -- max radius in meter that a player can be, has player a greater distance, the race will stop for this player
            },
            vehicles = {
                {
                    type = 'futo', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                }
            },
            vehicleSpawn = {  -- race starting position, if race is not a single race you can define so many you want
                {
                    coord = vector3(2566.1030, 2639.3831, 37.6950), -- Coordinate of starting points, you can add so many as you want
                    heading = 19.5369,
                },
                {
                    coord = vector3(2571.6750, 2641.5198, 37.8664),
                    heading = 19.8927,
                },
                {
                    coord = vector3(2568.1311, 2633.9644, 37.4906),
                    heading = 19.7506,
                },
                {
                    coord = vector3(2573.8003, 2635.9243, 37.4871),
                    heading = 19.7901,
                },
                {
                    coord = vector3(2575.7083, 2630.5520, 37.1180),
                    heading = 19.9100,
                },
                {
                    coord = vector3(2570.1821, 2628.4143, 37.1085),
                    heading = 19.1515,
                },
                {
                    coord = vector3(2577.6982, 2624.8975, 36.7405),
                    heading = 18.6047,
                },
                {
                    coord = vector3(2572.1023, 2623.1631, 36.7592),
                    heading = 18.4868,
                },
            },
            objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                {
                    coords = vector3(1057.5803222656, 103.69068908691, 0.261016845703),
                    pitch = 0.0, -- The pitch of the object should be normally 0.0
                    roll = 0.0, -- The roll of the object should be normally 0.0
                    yaw = 60.0, -- rotation of the object
                    name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                }
            },
            objectsToSpawnFile = 'example.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
        {
            startRaceLocation = {
                coordinate = vector3(-1152.5894, 2665.2881, 17.0939), -- position of the location
                enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 0.7, -- scale of blip
                color = 62, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'LS FOREST (1-8 Fahrer)', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 10.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 140.8792  -- the orientation of the ped
            },
            highScore = {
                coordinate = vector3(-1132.8279, 2680.6799, 17.3999), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 304, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Rangliste', -- The blip name on map
                radius = 2.0, -- Radius of the action to view the high score
                viewZone = true, -- view register register zone in game, if true marker, rgba and subMarker is needed
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 590.202, -- z position of the subMarker
                },
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_m_y_juggalo_01", -- ped model, see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0x91CA3E2C, -- ped hash, see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 127.7045 -- orientation of the ped
            },
            isSingleRace = true, -- if true only one player can do the race and you got an all time high score // if false so many player can do  multiple players can make the race. Player count depends on configured vehicle spawns
            isDriftRace = false, -- if the race is a drift race, the player withe the highest drift score win the race
            playerMustUseTheirOwnCar = false, -- if true players need to be in a vehicle to register for that race
            showRouteOnMap = true, -- Display the track on map
            roundCount = 2, -- how many rounds will have the race
            raceStartCountdownLength = 3, -- length of countdown before race
            raceFee = 100, -- how mush the player must pay for the race
            howManyPlayersGetWin = 3, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            itemsThatPlayerCanWin = { -- for single player races you need only one place to configure. Everybody that finish a track will get the configured items
                { -- Place 1
                    {
                        name = "",
                        isWeapon = false,
                        amount = 0,
                    },
                    {
                        name = "",
                        isWeapon = true,
                        amount = 0,
                    }
                },
                { -- Place 2
                    {
                        name = "",
                        isWeapon = false,
                        amount = 0,
                    },
                    {
                        name = "",
                        isWeapon = true,
                        amount = 0,
                    }
                },
                { -- Place 3
                    {
                        name = "",
                        isWeapon = false,
                        amount = 0,
                    },
                    {
                        name = "",
                        isWeapon = true,
                        amount = 0,
                    }
                },
            },
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            playerGetMoneyWinIfIsSingleRace = false, -- Player get a win, if this race is a single player race- Multiplayer track get always a win
            maxRaceDurationInSeconds = 1000, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            checkPoints = {
                coords = { -- coordinates of checkPoints
                    vector3(-1315.5658, 2476.2825, 23.5026),
                    vector3(-1670.2634, 2393.4885, 32.7042),
                    vector3(-1545.3358, 2251.9727, 54.0647),
                    vector3(-1449.6172, 1972.4166, 69.5570),
                    vector3(-1493.2960, 1620.0643, 106.5048),
                    vector3(-1585.3190, 966.6385, 156.2378),
                    vector3(-1265.3309, 855.9089, 190.1862),
                    vector3(-1003.7438, 1175.1652, 217.3358),
                    vector3(-749.2917, 974.7818, 237.11561),
                    vector3(-128.1478, 1048.0385, 228.4961),
                    vector3(272.9869, 1151.2489, 222.0737),
                    vector3(175.3588, 1462.8229, 239.1330),
                    vector3(201.8664, 1670.3234, 230.7056),
                    vector3(667.0878, 1739.8218, 188.5069),
                    vector3(1024.9119, 1560.3287, 171.0107),
                    vector3(1190.6100, 1056.9319, 158.2899),
                    vector3(1078.6034, 755.3008, 153.9629),
                    vector3(1119.1833, 633.0485, 113.2486),
                    vector3(1099.9310, 552.3494, 95.6828),
                    vector3(1278.6970, 834.6385, 104.7487),
                    vector3(1291.8903, 1335.8915, 105.1823),
                    vector3(1153.0811, 1830.1243, 71.8989),
                    vector3(757.2068, 2269.3149, 48.7467),
                    vector3(372.2975, 2507.1963, 44.4463),
                    vector3(107.3431, 2698.0083, 52.4350),
                    vector3(-448.4038, 2856.2075, 34.9871),
                    vector3(-731.8297, 2802.6138, 25.7770),
                    vector3(-1091.3630, 2690.5256, 19.3022),
                },
                radiusToPass = 10.0, -- Radius of the action to register
                style = {
                    marker = 6, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                    scale = 10.0, -- scale of marker https://docs.fivem.net/docs/game-references/markers/
                    rgba = { 120, 255, 120, 155 }, -- color of blip
                },
                maxDistanceToTrack = 2000 -- max radius in meter that a player can be, has player a greater distance, the race will stop for this player
            },
            vehicles = {
                {
                    type = 'futo', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 1000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                }
            },
            vehicleSpawn = {  -- race starting position, if race is not a single race you can define so many you want
                {
                    coord = vector3(-1144.0267, 2645.2151, 16.1876), -- Coordinate of starting points, you can add so many as you want
                    heading = 132.4057,
                },
                {
                    coord = vector3(-1146.5039, 2647.9360, 16.1816),
                    heading = 130.3431,
                },
                {
                    coord = vector3(-1141.7058, 2652.2090, 16.4434),
                    heading = 130.9119,
                },
                {
                    coord = vector3(-1139.3584, 2649.5818, 16.4499),
                    heading = 132.2288,
                },
                {
                    coord = vector3(-1134.7010, 2653.8564, 16.7235),
                    heading = 131.7415,
                },
                {
                    coord = vector3(-1137.0173, 2656.3953, 16.7128),
                    heading = 130.8955,
                },
                {
                    coord = vector3(-1132.5663, 2660.2783, 16.9750),
                    heading = 130.7277,
                },
                {
                    coord = vector3(-1130.3763, 2657.8784, 16.9838),
                    heading = 132.0915,
                },
            },
            objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                {
                    coords = vector3(1057.5803222656, 103.69068908691, 0.261016845703),
                    pitch = 0.0, -- The pitch of the object should be normally 0.0
                    roll = 0.0, -- The roll of the object should be normally 0.0
                    yaw = 60.0, -- rotation of the object
                    name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                }
            },
            objectsToSpawnFile = 'example.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
        {
            startRaceLocation = {
                coordinate = vector3(-2246.6164550781, 4315.3950195312, 46.501408050537),
                enableBlip = true,
                display = 4,
                sprite = 127,
                scale = 0.7,
                color = 62,
                name = 'DeadlyCrossRace',
                radius = 2.0,
                marker = 27,
                rgba = { 120, 255, 120, 155 },
                subMarker = {
                    marker = 4,
                    posZ = 4.66,
                },
                viewZone = true,
                enablePed = true,
                pedModel = "mp_m_freemode_01",
                pedHash = 0x705E61F2,
                pedOrientation = 0.0
            },
            highScore = {
                coordinate = vector3(-2264.4187011719, 4293.9130859375, 45.369538879395),
                enableBlip = false,
                display = 4,
                sprite = 304,
                scale = 1.0,
                color = 84,
                name = 'Cross-Leaderboard',
                radius = 2.0,
                viewZone = true, -- view zone in game
                marker = 27,
                rgba = { 120, 255, 120, 155 },
                subMarker = {
                    marker = 29,
                    posZ = 4.66,
                },
                enablePed = true,
                pedModel = "mp_m_freemode_01",
                pedHash = 0x705E61F2,
                pedOrientation = 0.0
            },
            isSingleRace = true,
            isDriftRace = false, -- if the race is a drift race, the player withe the highest drift score win the race
            playerMustUseTheirOwnCar = false,
            showRouteOnMap = true,
            roundCount = 1,
            raceStartCountdownLength = 3,
            raceFee = 1000,
            howManyPlayersGetWin = 1,
            itemsThatPlayerCanWin = { -- for single player races you need only one place to configure. Everybody that finish a track will get the configured items
                { -- Place 1
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
            },
            maxRaceDurationInSeconds = 500,
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            winRate = 0.0,
            playerGetMoneyWinIfIsSingleRace = false, -- Player get a win, if this race is a single player race- Multiplayer track get always a win
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            checkPoints = {
                coords = {
                    vector3(-2262.2106933594, 4352.1860351562, 43.671730041504),
                    vector3(-2254.6423339844, 4424.064453125, 38.890975952148),
                    vector3(-2170.0969238281, 4496.6713867188, 48.032669067383),
                    vector3(-2108.1044921875, 4514.7407226562, 27.990114212036),
                    vector3(-2042.2473144531, 4521.828125, 28.267343521118),
                    vector3(-1937.5190429688, 4451.0869140625, 39.463813781738),
                    vector3(-1807.5444335938, 4390.6328125, 51.12353515625),
                    vector3(-1753.2645263672, 4334.17578125, 77.370246887207),
                    vector3(-1694.515625, 4289.91015625, 71.09716796875),
                    vector3(-1685.5129394531, 4223.3188476562, 82.171752929688),
                    vector3(-1679.9150390625, 4139.5263671875, 147.28114318848),
                    vector3(-1661.2761230469, 4148.1630859375, 143.24673461914),
                    vector3(-1650.5703125, 4174.1982421875, 124.50553894043),
                    vector3(-1629.5239257812, 4207.2456054688, 83.500274658203),
                    vector3(-1569.5540771484, 4202.6489257812, 79.01042175293),
                    vector3(-1495.4183349609, 4203.611328125, 77.238563537598),
                    vector3(-1472.6115722656, 4194.6665039062, 77.421699523926),
                    vector3(-1397.5391845703, 4175.8095703125, 49.127151489258),
                    vector3(-1353.0714111328, 4127.279296875, 62.223876953125),
                    vector3(-1322.3303222656, 4181.2734375, 62.671112060547),
                    vector3(-1286.9056396484, 4276.2333984375, 65.86979675293),
                    vector3(-1230.1743164062, 4273.3852539062, 82.600700378418),
                    vector3(-1170.9816894531, 4275.380859375, 85.988876342773),
                    vector3(-1121.0977783203, 4297.5146484375, 88.918350219727),
                    vector3(-1082.9344482422, 4254.9047851562, 115.22743988037),
                    vector3(-1060.4372558594, 4246.4204101562, 135.99186706543),
                    vector3(-1030.5084228516, 4187.8803710938, 119.06956481934),
                    vector3(-1008.4940795898, 4139.5952148438, 122.02401733398),
                    vector3(-925.22216796875, 4151.3662109375, 147.63716125488),
                    vector3(-914.24066162109, 4090.7138671875, 176.17842102051),
                    vector3(-884.61901855469, 4097.9809570312, 162.93406677246),
                    vector3(-825.31207275391, 4052.662109375, 163.11433410645),
                    vector3(-780.52374267578, 4046.6047363281, 156.86923217773),
                    vector3(-701.31091308594, 4011.44140625, 132.04672241211),
                    vector3(-610.44055175781, 3976.6469726562, 118.34441375732),
                    vector3(-497.7239074707, 3966.8818359375, 82.34455871582),
                    vector3(-427.08529663086, 3945.10546875, 66.373428344727),
                    vector3(-348.56829833984, 3955.3791503906, 67.111129760742),
                    vector3(-270.53350830078, 3957.3171386719, 43.258102416992),
                    vector3(-233.80613708496, 3896.3186035156, 37.035160064697),
                },
                radiusToPass = 4.0,
                style = {
                    marker = 6,
                    scale = 4.0,
                    rgba = { 120, 255, 120, 155 },
                },
                maxDistanceToTrack = 800
            },
            vehicles = {
                {
                    type = 'sanchez',
                    fuelLevel = 1000.0,
                    mods = {
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        livery = 0
                    },
                },
            },
            vehicleSpawn = {
                {
                    coord = vector3(-2256.4321289062, 4314.7124023438, 45.72891998291),
                    heading = 2.475,
                }
            },
            objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                {
                    coords = vector3(1057.5803222656, 103.69068908691, 81.261016845703),
                    pitch = 0.0, -- The pitch of the object should be normally 0.0
                    roll = 0.0, -- The roll of the object should be normally 0.0
                    yaw = 60.0, -- rotation of the object
                    name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                }
            },
            objectsToSpawnFile = 'example.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
        {
            startRaceLocation = {
                coordinate = vector3(1122.03515625, 65.77596282959, 79.890335083008), -- position of the location
                enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- in circle of blib you can add sprite see: https://docs.fivem.net/docs/game-references/blips/
                scale = 0.7, -- scale of blip
                color = 62, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Duell Race', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
                radius = 2.0, -- Radius of the action to register
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                viewZone = true, -- view zone in game
                enablePed = true, -- enable ped on map
                pedModel = "a_f_y_juggalo_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0xDB134533, -- see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 221.0
            },
            highScore = {
                coordinate = vector3(1124.146484375, 69.515312194824, 79.890365600586), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 304, -- in circle of blib you can add sprite see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 84, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Duell Race Highscore', -- The blip name on map
                radius = 2.0, -- Radius of the action to view the high score
                viewZone = true, -- view register register zone in game, if true marker, rgba and subMarker is needed
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                rgba = { 120, 255, 120, 155 }, -- color of marker
                subMarker = {
                    marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 4.66, -- z position of the subMarker
                },
                enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                pedModel = "a_m_y_juggalo_01", -- ped model, see https://docs.fivem.net/docs/game-references/ped-models/
                pedHash = 0x91CA3E2C, -- ped hash, see https://docs.fivem.net/docs/game-references/ped-models/
                pedOrientation = 221.0 -- orientation of the ped
            },
            isSingleRace = false, -- if true only one player can do the race and you got an all time high score // if false so many player can do  multiple players can make the race. Player count depends on configured vehicle spawns
            isDriftRace = false, -- if the race is a drift race, the player withe the highest drift score win the race
            playerMustUseTheirOwnCar = false, -- if true players need to be in a vehicle to register for that race
            showRouteOnMap = true, -- Display the track on map
            roundCount = 1, -- how many rounds will the race have
            raceFee = 1000, -- how mush the player must pay for the race
            raceStartCountdownLength = 3, -- Duration of the start countdown
            maxRaceDurationInSeconds = 500, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = true, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            howManyPlayersGetWin = 3, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            itemsThatPlayerCanWin = { -- for single player races you need only one place to configure. Everybody that finish a track will get the configured items
                { -- Place 1
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
                { -- Place 2
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
                { -- Place 3
                    {
                        name = "gold_ingot",
                        isWeapon = false,
                        amount = 1,
                    },
                    {
                        name = "weapon_crowbar",
                        isWeapon = true,
                        amount = 1,
                    }
                },
            },
            playerGetMoneyWinIfIsSingleRace = true, -- Player get a win, if this race is a single player race- Multiplayer track get always a win
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            checkPoints = {
                coords = { -- coordinates of checkPoints
                    vector3(1194.1247558594, 286.31033325195, 81.871559143066),
                    vector3(1267.8872070312, 196.09803771973, 81.89665222168),
                    vector3(1080.1022949219, -86.786079406738, 81.874984741211),
                    vector3(1044.7482910156, 76.466667175293, 81.387725830078),
                },
                radiusToPass = 10.0, -- Radius of the action to register
                style = {
                    marker = 6, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                    scale = 10.0, -- scale of marker https://docs.fivem.net/docs/game-references/markers/
                    rgba = { 120, 255, 120, 155 }, -- color of blip
                },
                maxDistanceToTrack = 500 -- max radius in meter that a player can be, has player a greater distance, the race will stop for this player
            },
            vehicles = {
                {
                    type = 'brawler', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
                    fuelLevel = 10000.0, -- the fuel level will be set at every checkpoint to this value
                    mods = { -- Mods to apply to the racing vehicle.
                        engine = 2,
                        brakes = 2,
                        transmission = 2,
                        suspension = 3,
                        turbo = true,
                        modLivery = 0
                    },
                },
            },
            vehicleSpawn = {  -- race starting position, if race is not a single race you can define so many you want
                {
                    coord = vector3(1042.7591552734, 87.303985595703, 81.631896972656), -- Coordinate of starting points, you can add so many as you want
                    heading = 328.8,
                },
                {
                    coord = vector3(1042.9072265625, 82.330726623535, 81.477951049805),
                    heading = 329.5,
                },
                {
                    coord = vector3(1043.6652832031, 79.222503662109, 81.412796020508),
                    heading = 328.55,
                },
                {
                    coord = vector3(1044.7482910156, 76.466667175293, 81.387725830078),
                    heading = 324.15,
                },
                {
                    coord = vector3(1046.1315917969, 73.901390075684, 81.443771362305),
                    heading = 326.0,
                },
                {
                    coord = vector3(1047.0466308594, 71.679145812988, 81.52424621582),
                    heading = 326.3,
                },
                {
                    coord = vector3(1048.2209472656, 69.556678771973, 81.652465820312),
                    heading = 328.6,
                },
            },
            objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                {
                    coords = vector3(1057.5803222656, 103.69068908691, 81.261016845703),
                    pitch = 0.0, -- The pitch of the object should be normally 0.0
                    roll = 0.0, -- The roll of the object should be normally 0.0
                    yaw = 60.0, -- rotation of the object
                    name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                }
            },
            objectsToSpawnFile = 'example.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
    }
}
