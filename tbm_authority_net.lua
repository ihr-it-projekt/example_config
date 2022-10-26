Config = {
    language = 'en',
    useQbCore = true, -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
    qbCoreExportName = 'qb-core', -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
    esxExtendedName = 'es_extended', -- How you have named your es_extended mod, if you have renamed it.
    esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
        setJob = 'esx:setJob',
        playerLoaded = 'esx:playerLoaded',
        sendMessage = 'esx:showNotification',
        addGroupCommand = 'es:addGroupCommand',
    },
    viewRangeForMarkers = 100, -- how far ranges of markers are visible
    animation = true, -- Players get a Tablet inclusive animation when he open Authority Net
    playerServerSlots = 128, -- How many Players can play on your server
    unemployedJob = { -- what is your unemployed job
        name = 'unemployed',
        grade = 0,
    },
    police = { -- On Duty configuration
        jobName = 'police', -- what is the name of the police job, default is police
        canOpenEverywhere = true, -- can open Authority Net from everywhere
        inEmergencyVehicle = true, -- can open only in emergency vehicles
        positionsStyleConfig = { -- If you want to open Authority Net on PC, you can configure it here
            blip = {
                enable = true, -- will display on map
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 499, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'PC', -- Name of the Blip
            },
            marker = {
                enable = true, -- will displayed
                radius = 3.0, -- radius of marker
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                scale = 1.0, -- scale of marker
                rgba = { 255, 0, 0, 155 }, -- color of marker
                subMarker = {
                    marker = 21, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 1.0,  -- z position of the subMarker
                },
            },
        },
        radiusToOpen = 2.0, -- Radius where Authority can be opened on configured positions
        positionsWhereCanOpen = { -- Position where you have for example your PC and Police can open Authority Net
            vector3(-1281.9956054688,-3310.4956054688,12.945037841797)
        },
        vehicleWhereCanOpen = { -- additional vehicles where Authority Net can be opened
            --'police2'
        },
        keyToOpen = 57, -- Key when you want to open Authority Net from everywhere. See: https://docs.fivem.net/docs/game-references/controls/
        toggleJob = 'offpolice', -- what is the off duty job name of your police. Only used in ESX
    },
    offpolice = {
        toggleJob = 'police', -- default is "police" change it if your job name is different for police
        canOpenEverywhere = true, -- off duty cops can open the tablet everywhere
        radiusToOpen = 2.0, -- Radius where Authority can be opened on configured positions
        positionsWhereCanOpen = { -- Position where you have for example your PC and Police can open Authority Net
            vector3(-1281.9956054688,-3310.4956054688,12.945037841797)
        },
        positionsStyleConfig = { -- If you want to open Authority Net on PC, you can configure it here
            blip = {
                enable = true, -- will display on map
                display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
                sprite = 499, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
                scale = 1.0, -- scale of blip
                color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
                name = 'PC', -- Name of the Blip
            },
            marker = {
                enable = true, -- will displayed
                radius = 3.0, -- radius of marker
                marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
                scale = 1.0, -- scale of marker
                rgba = { 255, 0, 0, 155 }, -- color of marker
                subMarker = {
                    marker = 21, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                    posZ = 1.0,  -- z position of the subMarker
                },
            },
        },
        keyToOpen = 57, -- Key when you want to open Authority Net from everywhere. See: https://docs.fivem.net/docs/game-references/controls/
    }
}
