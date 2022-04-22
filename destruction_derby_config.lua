Config = {
    developMode = false, -- you for example start race alone and you will see the arena marker, objects, start locations and repair kit locations
    developModeConfig = {
        tracks = {
            {
                raceVariationIndex = 1
            },
            {
                raceVariationIndex = 1
            }
        }
    },
    viewRangeForMarkers = 200, -- Player must be in this range that all markers will be rendered
    Locale = 'en',
    lobbyTimeInSec = 5, -- the time that players have to register
    useESX_XP = false, -- if you use esx_esp mod you have to set this value to true
    useLegacyFuel = false, -- if you are using Legacy fuel mod, you have to set this value to true
    repairItemsCheckInSeconds = 30, -- how often repairKits will check, if they exist and new ones spawn
    useQbCore = false, -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
    qbCoreExportName = 'qb-core', -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
    events = {
        esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
        stopRealisticVehicleDamage = 'TBM_DD::StopRealisticVehicleDamage',
        startRealisticVehicleDamage = 'TBM_DD::StartRealisticVehicleDamage',
        seatBeltPlayer = 'TBM_DD::SeatBeltPlayer',
    },
    esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
        setJob = 'esx:setJob',
        playerLoaded = 'esx:playerLoaded',
        sendMessage = 'esx:showNotification',
        addGroupCommand = 'es:addGroupCommand',
    },
    tracks = {
        {
            canUseTeleportToArenaLeavePoint = false, -- there is an emergency teleport that players can use in arena area, if they have not started the race to teleport to leave point of arena.
            maxPortHeightRange = 40,
            minCountOfPlayers = 2, -- How many players are needed for the race
            playerMustUseTheirOwnCar = false, -- if true players need to be in a vehicle to register for that race, not recommended if you use a location where players can not escape with her vehicle
            raceStartCountdownLength = 3, -- length of countdown before race
            raceFee = 10000, -- how mush the player must pay for the race
            howManyPlayersGetWin = 2, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            maxRaceDurationInSeconds = 900, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            startRaceLocation = { --Where players can start the race
                coordinate = vector3(2832.365234375, 2796.6584472656, 56.462390899658), -- position of the location
                enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Steinbruch Arena', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
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
            highScore = { -- Where player can see her race results
                coordinate = vector3(2823.5646972656, 2807.6281738281, 56.359573364258), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 304, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Steinbruch Arena Scoreboard', -- The blip name on map
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
                pedOrientation = 217.0 -- orientation of the ped
            },
            arena = { -- The place where the race happens
                coordinate = vector3(2951.3095703125, 2791.7019042969, 62.057651519775), -- should be the midpoint of the location
                viewZone = true, -- view zone in game, if true marker, rgba and subMarker is needed
                marker = 25, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                style = {
                    scale = 220.0, -- radius of arena
                    rgba = { 120, 255, 120, 155 }, -- color of marker
                },
            },
            raceVariations = {
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
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
                            vector3(2950.91796875, 2735.2211914063, 43.596229553223),
                            vector3(2975.0822753906, 2779.2329101563, 37.546192169189),
                            vector3(2945.6352539063, 2888.0327148438, 58.607887268066),
                            vector3(2920.4682617188, 2777.3679199219, 42.94942855835),
                            vector3(2992.9111328125, 2837.8842773438, 56.337413787842),
                            vector3(3013.6411132813, 2806.5261230469, 65.100791931152),
                            vector3(2881.919921875, 2770.0256347656, 58.484889984131),
                            vector3(2982.7053222656, 2747.3364257813, 55.638668060303),
                            vector3(2894.990234375, 2820.3674316406, 53.766056060791),
                            vector3(2876.6401367188, 2788.8598632813, 56.319599151611),
                            vector3(2903.8679199219, 2794.9675292969, 53.505706787109),
                            vector3(2961.7443847656, 2840.8872070313, 44.53243637085),
                            vector3(2944.6381835938, 2830.5756835938, 47.560554504395),
                        },
                        maxRepairItemsAtSameTime = 1, -- The max. number of repairKits at the same time
                    },
                    vehicles = {
                        {
                            type = 'trophytruck', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
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
                            type = 'trophytruck2', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
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
                        { coord = vector3(2959.4609375, 2713.0864257813, 54.733833312988), heading = 295.0 },
                        { coord = vector3(2867.3642578125, 2811.8171386719, 54.287200927734), heading = 243.0 },
                        { coord = vector3(2968.9758300781, 2883.59765625, 58.978229522705), heading = 149.0 },
                        { coord = vector3(2964.0180664063, 2790.5239257813, 40.136901855469), heading = 24.0 },
                        { coord = vector3(3027.8723144531, 2764.0969238281, 55.993343353271), heading = 85.0 },
                    },
                    objectsToSpawn = { -- not required, if you want to spawn some objects only for the race
                        {
                            coords = vector3(2855.0886230469, 2819.0380859375, 52.44119720459),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 246.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(2861.2475585938, 2828.9074707031, 52.290345001221),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 261.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(2857.5356445313, 2824.3852539063, 52.269776153564),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 242.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(2931.083984375, 2704.0129394531, 64.060955810547),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 30.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(3026.8723144531, 2733.6789550781, 61.708641815186),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 80.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(3042.9116210938, 2781.4738769531, 67.749714660645),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 37.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(3017.3049316406, 2848.0007324219, 72.401493835449),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 191.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(2989.5034179688, 2875.5654296875, 60.683769989014),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 161.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(2969.9682617188, 2887.2407226563, 58.462460327148),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 153.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                        {
                            coords = vector3(2882.9638671875, 2853.6350097656, 62.187306213379),
                            pitch = 0.0, -- The pitch of the object should be normally 0.0
                            roll = 0.0, -- The roll of the object should be normally 0.0
                            yaw = 275.0, -- rotation of the object
                            name = "lts_prop_lts_offroad_tyres01", -- the model name, can be taken from: https://gta-objects.xyz/objects
                        },
                    },
                    objectsToSpawnFile = 'track.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
                }
            }
        },
        {
            needsStadium = true,
            canUseTeleportToArenaLeavePoint = true, -- there is an emergency teleport that players can use in arena area, if they have not started the race to teleport to leave point of arena.
            maxPortHeightRange = 40,
            minCountOfPlayers = 2, -- How many players are needed for the race
            playerMustUseTheirOwnCar = false, -- if true players need to be in a vehicle to register for that race, not recommended if you use a location where players can not escape with her vehicle
            raceStartCountdownLength = 5, -- length of countdown before race
            raceFee = 10000, -- how mush the player must pay for the race
            howManyPlayersGetWin = 0, -- if multiplayer race they can get a price. if you enter 3, 3 player will get a price.
            winRate = 0.8, -- How high is the percentage of collected raceFees that a player can win.
            maxRaceDurationInSeconds = 900, -- Max duration of an race. If the duration is reach. The race will for all left players stopped.
            useOwnGameInstance = false, -- Use a separate game instance for the race. So race runs complete seperated!! No disturbing the other players
            xp = 1000, -- if you use esx_esp mod you will get xp when you finish the track, first place will become 100% second place get 50%, third place 33% ... depends on howManyPlayersGetWin config
            neededXP = 0, -- if you use esx_esp mod, players need this level of xp to can drive this track
            loadableInteriorsId = 1,
            selectTrackPoint = { --Where players can start the race
                coordinate = vector3(2839.8461914062,-3901.0285644531,144.99853515625), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Big Arena Track Select', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
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
                pedOrientation = 170.0,  -- the orientation of the ped
                isInArena = true, -- Ped is placed in arena
            },
            startRaceLocation = { --Where players can start the race
                coordinate = vector3(2842.162109375, -3910.6218261719, 151.0086517334), -- position of the location
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
                pedOrientation = 84.0,  -- the orientation of the ped
                isInArena = true, -- Ped is placed in arena
            },
            enterPoint = { -- is optional but needed when you use leavePoint, can be used to teleport players into a building
                coordinate = vector3(-278.54107666016, -1919.0435791016, 28.946044921875), -- position of the location
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
                pedOrientation = 339.0, -- the orientation of the ped
            },
            leavePoint = { -- optional, but needed if you use enterPoint, teleports player back to entrypoint
                coordinate = vector3(2840.0615234375, -3917.3295898438, 155.87657165527), -- position of the location
                enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'Arena Ausgang', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
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
                pedOrientation = 84.0, -- the orientation of the ped
                isInArena = true, -- Ped is placed in arena
            },
            highScore = { -- Where player can see her race results
                coordinate = vector3(2835.6101074219, -3910.6064453125, 151.00854492188), -- position of the location
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
                pedOrientation = 272.0, -- orientation of the ped
                isInArena = true, -- Ped is placed in arena
            },
            arena = { -- The place where the race happens
                coordinate = vector3(2799.7351074219, -3799.8552246094, 144.1003036499), -- should be the midpoint of the location
                viewZone = false, -- view zone in game, if true marker, rgba and subMarker is needed
                marker = 25, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                style = {
                    scale = 400.0, -- radius of arena
                    rgba = { 120, 255, 120, 155 }, -- color of marker
                },
            },
            raceVariations = {
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
                    displayName = "Set_Dystopian_01", -- must be unique
                    map = "Set_Dystopian_01",
                    scene = "dystopian",
                    repairKits = { -- items that are spawn what can players collect and repair the vehicle
                        stopSpawnAfterTimeInSeconds = 120, -- Spawn items will not longer spawn after this time is exceeded
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
                            vector3(2774.9333496094, -3862.2111816406, 137.46627807617),
                            vector3(2927.1447753906, -3796.7099609375, 126.82914733887),
                            vector3(2674.2163085938, -3798.7451171875, 126.828956604),
                            vector3(2832.8132324219, -3886.2358398438, 138.80934143066),
                            vector3(2803.5476074219, -3800.2937011719, 102.83931732178),
                            vector3(2921.830078125, -3829.8352050781, 137.23002624512),
                            vector3(2840.4978027344, -3765.0920410156, 121.04628753662),
                            vector3(2640.0561523438, -3781.189453125, 138.80009460449),
                            vector3(2786.7746582031, -3760.74609375, 115.08397674561),
                            vector3(2788.6083984375, -3839.8369140625, 115.09994506836),
                            vector3(2876.8093261719, -3800.7282714844, 121.47300720215),
                            vector3(2721.2443847656, -3799.9362792969, 122.30039978027),
                            vector3(2755.4069824219, -3687.2849121094, 139.48294067383),
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
                        { coord = vector3(2844.9890136719, -3913.4768066406, 140.0), heading = 351.49606323242 },
                        { coord = vector3(2835.1911621094, -3913.1472167969, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2824.8000488281, -3913.0681152344, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2814.9494628906, -3912.8308105469, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2804.9538574219, -3912.8439941406, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2795.0241699219, -3912.9890136719, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2784.8571777344, -3913.0021972656, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2775.0856933594, -3912.5935058594, 140.0), heading = 0.0 },
                        { coord = vector3(2765.0637207031, -3912.7253417969, 140.0), heading = 0.0 },
                        { coord = vector3(2755.0681152344, -3912.7648925781, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2754.8439941406, -3687.2175292969, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2765.0241699219, -3687.2966308594, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2775.0197753906, -3687.1120605469, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2784.9890136719, -3687.1779785156, 140.0), heading = 170.07873535156 },
                        { coord = vector3(2794.9846191406, -3687.1516113281, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2805.0197753906, -3687.1516113281, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2815.0285644531, -3687.0725097656, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2824.9055175781, -3687.1516113281, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2834.9802246094, -3686.9934082031, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2844.8703613281, -3687.0725097656, 140.0), heading = 184.25196838379 },
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
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
                    displayName = "Set_Dystopian_02",
                    map = "Set_Dystopian_02",
                    scene = "dystopian",
                    repairKits = { -- items that are spawn what can players collect and repair the vehicle
                        stopSpawnAfterTimeInSeconds = 120, -- Spawn items will not longer spawn after this time is exceeded
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
                            vector3(2884.3647460938, -3813.0593261719, 142.00512695312),
                            vector3(2823.9296875, -3812.0043945312, 140.45495605469),
                            vector3(2860.7604980469, -3872.8220214844, 139.66296386719),
                            vector3(2750.6506347656, -3782.5847167969, 139.66296386719),
                            vector3(2722.1274414062, -3813.0461425781, 141.31433105469),
                            vector3(2765.4196777344, -3875.578125, 139.73034667969),
                            vector3(2951.3669433594, -3759.3889160156, 140.16845703125),
                            vector3(2636.5187988281, -3783.8901367188, 140.01684570312),
                            vector3(2686.4968261719, -3746.0834960938, 140.25280761719),
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
                        { coord = vector3(2844.9890136719, -3913.4768066406, 140.0), heading = 351.49606323242 },
                        { coord = vector3(2835.1911621094, -3913.1472167969, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2824.8000488281, -3913.0681152344, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2814.9494628906, -3912.8308105469, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2804.9538574219, -3912.8439941406, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2795.0241699219, -3912.9890136719, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2784.8571777344, -3913.0021972656, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2775.0856933594, -3912.5935058594, 140.0), heading = 0.0 },
                        { coord = vector3(2765.0637207031, -3912.7253417969, 140.0), heading = 0.0 },
                        { coord = vector3(2755.0681152344, -3912.7648925781, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2754.8439941406, -3687.2175292969, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2765.0241699219, -3687.2966308594, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2775.0197753906, -3687.1120605469, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2784.9890136719, -3687.1779785156, 140.0), heading = 170.07873535156 },
                        { coord = vector3(2794.9846191406, -3687.1516113281, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2805.0197753906, -3687.1516113281, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2815.0285644531, -3687.0725097656, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2824.9055175781, -3687.1516113281, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2834.9802246094, -3686.9934082031, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2844.8703613281, -3687.0725097656, 140.0), heading = 184.25196838379 },
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
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
                    displayName = "Set_Dystopian_03",
                    map = "Set_Dystopian_03",
                    scene = "dystopian",
                    repairKits = { -- items that are spawn what can players collect and repair the vehicle
                        stopSpawnAfterTimeInSeconds = 120, -- Spawn items will not longer spawn after this time is exceeded
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
                        repairKitPositions = {
                            vector3(2838.8571777344,-3875.525390625,143.01611328125),
                            vector3(2741.578125,-3877.3317871094,144.88647460938),
                            vector3(2773.4240722656,-3796.1669921875,159.30993652344),
                            vector3(2836.8923339844,-3796.8000488281,159.04028320312),
                            vector3(2857.7407226562,-3724.3515625,143.63952636719),
                            vector3(2800.5759277344,-3801.7583007812,137.75903320312),
                            vector3(2652.3955078125,-3761.6440429688,144.111328125),
                            vector3(2764.0747070312,-3720.9758300781,145.44250488281),
                            vector3(2888.3471679688,-3849.8901367188,140.87622070312),
                            vector3(2746.2856445312,-3830.5187988281,140.97729492188),
                            vector3(2715.5078125,-3776.5451660156,144.33044433594),
                            vector3(2753.525390625,-3774.7253417969,144.16186523438),
                            vector3(2920.4438476562,-3765.1779785156,142.34216308594),
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
                        { coord = vector3(2844.9890136719, -3913.4768066406, 140.0), heading = 351.49606323242 },
                        { coord = vector3(2835.1911621094, -3913.1472167969, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2824.8000488281, -3913.0681152344, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2814.9494628906, -3912.8308105469, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2804.9538574219, -3912.8439941406, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2795.0241699219, -3912.9890136719, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2784.8571777344, -3913.0021972656, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2775.0856933594, -3912.5935058594, 140.0), heading = 0.0 },
                        { coord = vector3(2765.0637207031, -3912.7253417969, 140.0), heading = 0.0 },
                        { coord = vector3(2755.0681152344, -3912.7648925781, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2754.8439941406, -3687.2175292969, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2765.0241699219, -3687.2966308594, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2775.0197753906, -3687.1120605469, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2784.9890136719, -3687.1779785156, 140.0), heading = 170.07873535156 },
                        { coord = vector3(2794.9846191406, -3687.1516113281, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2805.0197753906, -3687.1516113281, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2815.0285644531, -3687.0725097656, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2824.9055175781, -3687.1516113281, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2834.9802246094, -3686.9934082031, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2844.8703613281, -3687.0725097656, 140.0), heading = 184.25196838379 },
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
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
                    displayName = "Set_Dystopian_05",
                    map = "Set_Dystopian_05",
                    scene = "dystopian",
                    repairKits = { -- items that are spawn what can players collect and repair the vehicle
                        stopSpawnAfterTimeInSeconds = 120, -- Spawn items will not longer spawn after this time is exceeded
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
                        repairKitPositions = {
                            vector3(2750.439453125,-3874.4174804688,140.28649902344),
                            vector3(2703.9033203125,-3849.2834472656,139.91577148438),
                            vector3(2838.3295898438,-3725.0637207031,140.03369140625),
                            vector3(2922.9890136719,-3760.7209472656,140.18530273438),
                            vector3(2814.0659179688,-3808.1538085938,132.95678710938),
                            vector3(2691.4548339844,-3745.3054199219,142.76342773438),
                            vector3(2923.6879882812,-3854.0439453125,139.91577148438),
                            vector3(2803.859375,-3915.0725097656,140.0),
                            vector3(2775.4946289062,-3687.6396484375,140.0),
                            vector3(2777.2087402344,-3754.0747070312,135.72009277344),
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
                        { coord = vector3(2844.9890136719, -3913.4768066406, 140.0), heading = 351.49606323242 },
                        { coord = vector3(2835.1911621094, -3913.1472167969, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2824.8000488281, -3913.0681152344, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2814.9494628906, -3912.8308105469, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2804.9538574219, -3912.8439941406, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2795.0241699219, -3912.9890136719, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2784.8571777344, -3913.0021972656, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2775.0856933594, -3912.5935058594, 140.0), heading = 0.0 },
                        { coord = vector3(2765.0637207031, -3912.7253417969, 140.0), heading = 0.0 },
                        { coord = vector3(2755.0681152344, -3912.7648925781, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2754.8439941406, -3687.2175292969, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2765.0241699219, -3687.2966308594, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2775.0197753906, -3687.1120605469, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2784.9890136719, -3687.1779785156, 140.0), heading = 170.07873535156 },
                        { coord = vector3(2794.9846191406, -3687.1516113281, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2805.0197753906, -3687.1516113281, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2815.0285644531, -3687.0725097656, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2824.9055175781, -3687.1516113281, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2834.9802246094, -3686.9934082031, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2844.8703613281, -3687.0725097656, 140.0), heading = 184.25196838379 },
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
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
                    displayName = "Set_Scifi_03",
                    map = "Set_Scifi_03",
                    scene = "scifi",
                    repairKits = { -- items that are spawn what can players collect and repair the vehicle
                        stopSpawnAfterTimeInSeconds = 120, -- Spawn items will not longer spawn after this time is exceeded
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
                        repairKitPositions = {
                            vector3(2652.6726074219,-3800.4658203125,140.10107421875),
                            vector3(2800.3515625,-3799.912109375,140.0),
                            vector3(2827.0285644531,-3739.806640625,140.01684570312),
                            vector3(2836.2329101562,-3800.2680664062,127.98608398438),
                            vector3(2746.4702148438,-3830.3208007812,127.98608398438),
                            vector3(2722.193359375,-3885.6264648438,139.98315429688),
                            vector3(2761.9516601562,-3714.7648925781,139.98315429688),
                            vector3(2947.4636230469,-3800.7561035156,140.10107421875),
                            vector3(2875.8198242188,-3838.03515625,134.08569335938),
                            vector3(2729.9340820312,-3799.595703125,139.98315429688),
                            vector3(2869.8198242188,-3799.7275390625,139.98315429688),
                            vector3(2879.3537597656,-3755.947265625,140.0),
                            vector3(2903.8022460938,-3791.4196777344,127.98608398438),
                        },
                        maxRepairItemsAtSameTime = 1, -- The max. number of repairKits at the same time
                    },
                    vehicles = {
                        {
                            type = 'Buffalo3', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
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
                        }
                    },
                    vehicleSpawn = {  -- race starting position
                        { coord = vector3(2844.9890136719, -3913.4768066406, 140.0), heading = 351.49606323242 },
                        { coord = vector3(2835.1911621094, -3913.1472167969, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2824.8000488281, -3913.0681152344, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2814.9494628906, -3912.8308105469, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2804.9538574219, -3912.8439941406, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2795.0241699219, -3912.9890136719, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2784.8571777344, -3913.0021972656, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2775.0856933594, -3912.5935058594, 140.0), heading = 0.0 },
                        { coord = vector3(2765.0637207031, -3912.7253417969, 140.0), heading = 0.0 },
                        { coord = vector3(2755.0681152344, -3912.7648925781, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2754.8439941406, -3687.2175292969, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2765.0241699219, -3687.2966308594, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2775.0197753906, -3687.1120605469, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2784.9890136719, -3687.1779785156, 140.0), heading = 170.07873535156 },
                        { coord = vector3(2794.9846191406, -3687.1516113281, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2805.0197753906, -3687.1516113281, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2815.0285644531, -3687.0725097656, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2824.9055175781, -3687.1516113281, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2834.9802246094, -3686.9934082031, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2844.8703613281, -3687.0725097656, 140.0), heading = 184.25196838379 },
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
                {
                    canUseWeapons = false, -- Player can use their own weapons if scenario was selected
                    displayName = "Set_Wasteland_05",
                    map = "Set_Wasteland_05",
                    scene = "wasteland",
                    repairKits = { -- items that are spawn what can players collect and repair the vehicle
                        stopSpawnAfterTimeInSeconds = 120, -- Spawn items will not longer spawn after this time is exceeded
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
                        repairKitPositions = {
                            vector3(2934.6330566406,-3799.9252929688,140.16845703125),
                            vector3(2665.4768066406,-3800.9011230469,140.05053710938),
                            vector3(2751.0856933594,-3752.9406738281,136.04028320312),
                            vector3(2840.3208007812,-3846.4350585938,135.72009277344),
                            vector3(2860.7341308594,-3751.2395019531,141.31433105469),
                            vector3(2650.3779296875,-3856.1142578125,152.83959960938),
                            vector3(2652.2504882812,-3747.3757324219,150.78393554688),
                            vector3(2970.9362792969,-3792.9099121094,155.67028808594),
                            vector3(2809.2526855469,-3793.5825195312,132.88940429688),
                        },
                        maxRepairItemsAtSameTime = 1, -- The max. number of repairKits at the same time
                    },
                    vehicles = {
                        {
                            type = 'Massacro2', -- vehicle type see https://wiki.rage.mp/index.php?title=Vehicles
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
                        { coord = vector3(2844.9890136719, -3913.4768066406, 140.0), heading = 351.49606323242 },
                        { coord = vector3(2835.1911621094, -3913.1472167969, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2824.8000488281, -3913.0681152344, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2814.9494628906, -3912.8308105469, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2804.9538574219, -3912.8439941406, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2795.0241699219, -3912.9890136719, 140.0), heading = 354.33071899414 },
                        { coord = vector3(2784.8571777344, -3913.0021972656, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2775.0856933594, -3912.5935058594, 140.0), heading = 0.0 },
                        { coord = vector3(2765.0637207031, -3912.7253417969, 140.0), heading = 0.0 },
                        { coord = vector3(2755.0681152344, -3912.7648925781, 140.0), heading = 357.16534423828 },
                        { coord = vector3(2754.8439941406, -3687.2175292969, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2765.0241699219, -3687.2966308594, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2775.0197753906, -3687.1120605469, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2784.9890136719, -3687.1779785156, 140.0), heading = 170.07873535156 },
                        { coord = vector3(2794.9846191406, -3687.1516113281, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2805.0197753906, -3687.1516113281, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2815.0285644531, -3687.0725097656, 140.0), heading = 172.91339111328 },
                        { coord = vector3(2824.9055175781, -3687.1516113281, 140.0), heading = 175.74803161621 },
                        { coord = vector3(2834.9802246094, -3686.9934082031, 140.0), heading = 167.24407958984 },
                        { coord = vector3(2844.8703613281, -3687.0725097656, 140.0), heading = 184.25196838379 },
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
        },
    }
}
