Config = {
    language = 'en',
    configMode = false,
    viewRangeForMarkers = 30,
    viewRangeForPedNumbers = 100,
    radiusToOpenMenu = 2.0,
    esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
        setJob = 'esx:setJob',
        playerLoaded = 'esx:playerLoaded',
        sendMessage = 'esx:showNotification',
        addGroupCommand = 'es:addGroupCommand',
        esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
    },
    useQbCore = false, -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
    qbCoreExportName = 'qb-core', -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
    tracks = {
        {
            name = "CasinoRace",
            countdown = 3, -- length of countdown before race
            hasOwnGameInstance = true,
            freezePlayers = true,
            minBet = 1000,
            maxBet = 1000000000,
            minRounds = 1,
            maxRounds = 3,
            startRaceLocation = {
                coordinate = vector3(1029.4669189453, 90.32649230957, 84.740608215332), -- position of the location
                blip = {
                    enable = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
                    display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                    sprite = 442, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                    scale = 0.7, -- scale of blip
                    color = 3, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                },
                marker = {
                    radius = 2.0, -- Radius of the action to register
                    enable = false,
                    marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                    rgba = { 120, 255, 120, 155 }, -- color of marker
                    subMarker = {
                        marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                        posZ = 4.66, -- z position of the subMarker
                    },
                },
                ped = {
                    enable = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
                    model = "cs_josh", -- see https://docs.fivem.net/docs/game-references/ped-models/
                    orientation = 69.52, -- the orientation of the ped
                }
            },
            pedStartPositions = {
                { pos = vector3(1052.0394287109,71.341377258301,82.191505432129), orientation = 332.65353393555 },
                { pos = vector3(1049.1362304688,73.147125244141,82.055671691895), orientation = 332.65353393555 },
                { pos = vector3(1046.5217285156,74.723854064941,81.913383483887), orientation = 322.81890869141 },
                { pos = vector3(1043.5843505859,76.497428894043,81.851860046387), orientation = 332.65353393555 },
                { pos = vector3(1040.7723388672,78.155288696289,81.93034362793), orientation = 332.65353393555 },
                { pos = vector3(1037.4948730469,80.186920166016,82.146682739258), orientation = 332.65353393555 },
            },
            quotes = {
                -- [countOfPeds] = quote
                [2] = 1.5,
                [3] = 2.0,
                [4] = 3.0,
                [5] = 4.0,
                [6] = 5.0,
            },
            checkPoints = {
                vector3(1168.4429931641,268.6257019043,81.39803314209),
                vector3(1207.8898925781,283.95272827148,81.513694763184),
                vector3(1241.4232177734,273.93994140625,81.669853210449),
                vector3(1265.4093017578,246.67860412598,82.150344848633),
                vector3(1267.5578613281,209.97506713867,82.158103942871),
                vector3(1089.6091308594,-74.605163574219,81.615196228027),
                vector3(1056.6798095703,-89.857063293457,81.450157165527),
                vector3(1023.7772216797,-81.44799041748,81.465682983398),
                vector3(1001.1107788086,-56.925617218018,81.499984741211),
                vector3(994.40228271484,-18.574789047241,81.448692321777),
                vector3(1049.8311767578,83.880416870117,81.864151000977),
            },
            peds = {
                {
                    label = 'Runner',
                    name = 'a_m_m_genfat_01',
                    image = './view/fat.png',
                    camPosition = {
                        x = 0.0,
                        y = -4.0,
                        z = 1.0
                    },
                    speedFactor = {
                        min = 900, -- min value 1 very slow, 1000 is normal speed
                        max = 1050, -- max value 10000
                    },
                    speedChangeTimeInSeconds = 3,
                },
                {
                    label = 'Wolf',
                    name = 'a_c_coyote',
                    image = './view/coyote.png',
                    camPosition = {
                        x = 0.0,
                        y = -4.0,
                        z = 1.0
                    },
                    speedFactor = {
                        min = 900, -- min value 1 very slow, 1000 is normal speed
                        max = 1050, -- max value 10000
                    },
                    speedChangeTimeInSeconds = 3,
                },
                {
                    label = 'Cow',
                    name = 'a_c_cow',
                    image = './view/cow.png',
                    camPosition = {
                        x = 0.0,
                        y = -6.0,
                        z = 1.0
                    },
                    speedFactor = {
                        min = 900, -- min value 1 very slow, 1000 is normal speed
                        max = 1050, -- max value 10000
                    },
                    speedChangeTimeInSeconds = 3,
                },
                {
                    label = 'Pig',
                    name = 'a_c_pig',
                    image = './view/boa.png',
                    camPosition = {
                        x = 0.0,
                        y = -4.0,
                        z = 1.0
                    },
                    speedFactor = {
                        min = 900, -- min value 1 very slow, 1000 is normal speed
                        max = 1050, -- max value 10000
                    },
                    speedChangeTimeInSeconds = 3,
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
            objectsToSpawnFile = 'track1.xml', -- Put xml file into tracks folder. Change filename here, must be the same as you have in tracks folder. You can find tracks here. https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D
        },
    }
}
