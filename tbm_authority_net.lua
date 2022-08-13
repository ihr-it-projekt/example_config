Config = {
    language = 'de',
    useQbCore = false, -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
    qbCoreExportName = 'qb-core', -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
    esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
        esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
        setJob = 'esx:setJob',
        playerLoaded = 'esx:playerLoaded',
        sendMessage = 'esx:showNotification',
        addGroupCommand = 'es:addGroupCommand',
    },
    jobNamesCops = 'police',
    viewRangeForMarkers = 100,
    animation = true,
    playerServerSlots = 128,
    unemployedJob = {
        name = 'unemployed',
        grade = 0,
    },
    police = {
        positionsStyleConfig = {
            blip = {
                enable = true,
                display = 4,
                sprite = 499,
                scale = 1.0,
                color = 1,
                name = 'PC',
            },
            marker = {
                enable = true,
                radius = 3.0,
                marker = 27,
                scale = 1.0,
                rgba = { 255, 0, 0, 155 },
                subMarker = {
                    marker = 21,
                    posZ = 1.0,
                },
            },
        },
        jobName = 'police',
        jobGrades = { -- order is important. Please order from lowest grade to highest grade
            {
                name = 'recruit',
                label = 'Sheriff',
                grade = 0,
            },
            {
                name = 'recruit',
                label = 'Rekrut',
                grade = 1,
            },
            {
                name = 'officer',
                label = 'Officer 1',
                grade = 2,
            },
            {
                name = 'detective',
                label = 'Officer 2',
                grade = 3,
            },
            {
                name = 'detective',
                label = 'Officer 3',
                grade = 4,
            },
            {
                name = 'detective',
                label = 'Detective',
                grade = 5,
            },
            {
                name = 'sergeant',
                label = 'Sergeant 1',
                grade = 6,
            },
            {
                name = 'sergeant',
                label = 'Sergeant 2',
                grade = 7,
            },
            {
                name = 'lieutenant',
                label = 'Lieutenant',
                grade = 8,
            },
            {
                name = 'captain',
                label = 'Captain',
                grade = 9,
            },
            {
                name = 'boss',
                label = 'Co Chief',
                grade = 10,
            },
            {
                name = 'boss',
                label = 'Chief',
                grade = 11,
            },
        },
        canOpenEverywhere = true,
        inEmergencyVehicle = true,
        vehicleWhereCanOpen = {
            --'police2'
        },
        radiusToOpen = 2.0,
        positionsWhereCanOpen = {
            vector3(-1281.9956054688,-3310.4956054688,12.945037841797)
        },
        rangeToPositionWhereCanOpen = 2.0,
        keyToOpen = 57,
        toggleJob = 'offpolice',
        isOnDuty = true,
    },
    offpolice = {
        toggleJob = 'police',
        isOnDuty = false,
        canOpenEverywhere = true,
        radiusToOpen = 2.0,
        positionsWhereCanOpen = {
            vector3(-1281.9956054688,-3310.4956054688,12.945037841797)
        },
        positionsStyleConfig = {
            blip = {
                enable = true,
                display = 4,
                sprite = 499,
                scale = 1.0,
                color = 1,
                name = 'PC',
            },
            marker = {
                enable = true,
                radius = 3.0,
                marker = 27,
                scale = 1.0,
                rgba = { 255, 0, 0, 155 },
                subMarker = {
                    marker = 4,
                    posZ = 1.0,
                },
            },
        },
        keyToOpen = 57,
    }
}
