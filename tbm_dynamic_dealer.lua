Config = {}

Config.Locale = 'en'

Config.roundMoneyPositions = 0 -- if you use another currency system then esx default. 0 means you only have number like 1, number like 2 means float values like 1.22

Config.esx_getSharedObject = 'esx:getSharedObject' -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended

Config.qbCoreExportName = 'qb-core' -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore

Config.useQbCore = false -- if you are using ESX, change this value to false. If you are using QBCore, set value to true

Config.qbCore = { -- only important if you are using qb core framework
    blackMoneyName = 'black_money' -- Be sure you have configured black money in qb core
}

Config.useOxmysql = false -- if you are using https://github.com/overextended/oxmysql

Config.esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
    setJob = 'esx:setJob',
    playerLoaded = 'esx:playerLoaded',
    sendMessage = 'esx:showNotification',
}

Config.viewRangeForMarkers = 100 -- Player must be in this range that all markers will be rendered

Config.policeJobName = 'police' -- Name of your police job

Config.weaponsAreItems = false -- You have a Server where your weapons are items, set this value to true and put your weapons in TraderLocations.items section instead of TraderLocations.weapons

Config.TraderLocations = {
    {
        label = 'Drug Dealer', -- name of the dealer
        coords = vector3(-1174.1408691406, -1573.4897460938, 3.3710079193115), -- position of the dealer
        enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and label are required
        color = 6, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
        sprite = 378,-- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
        marker = 23, -- marker type see https://docs.fivem.net/docs/game-references/blips/
        scale = 1.0, -- scale of blip
        radius = 10.0, -- Radius of the action to open the dealer
        viewZone = true, -- view zone in game
        rgba = { 120, 255, 120, 155 }, -- color of marker
        subMarker = {
            marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
            posz = 3.66, -- z position of the subMarker
        },
        items = { -- Define here which items you can trade at the dealer position
            {
                name = "marijuana", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            --{ -- Example if you have option Config.weaponsAreItems  = true, then you have to remove the weapons in weapons section
            --    name = "weapon_dagger",
            --    playerCanNotSell = false, -- player can not sale the item if value is true
            --    playerCanNotBuy = false, -- player can not buy the item if value is true
            --}
        },
        weapons = {
            {
                name = "weapon_dagger",
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            }
        },
        enablePed = false, -- Enable the ped. pedModel and pedOrientation is needed if you enable this options
        pedModel = "mp_m_freemode_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
        pedOrientation = 0.0,  -- the orientation of the ped
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = false, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = true, -- this option enable when player sell items, the money will transferred to job bank account
        jobAccountName = 'police', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 1, -- how many cops must be online that player can trade at that location
    },
    {
        label = 'Usage items',
        coords = vector3(-1189.4425048828, -1549.7603759766, 3.475670337677),
        enableBlip = true,
        color = 6,
        sprite = 162,
        marker = 23,
        scale = 4.0,
        radius = 2.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "drill", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "glassbottle", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "mp_m_freemode_01",
        pedOrientation = 120.0,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = true, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    }
}

Config.DynamicTraderItems = {
    drill = { -- the name from items sql table
        id = 1, -- Id must be a unique number value
        maxPrice = 100, -- max price when storage is empty
        minPrice = 75, -- min price if storage is full
        maxItems = 1000, -- how big is the storage of the item
        itemReducePerTick = -1, -- 0 = Items will never reduce
        tickInSeconds = 10, -- how long is one tick that item will reduced
        label = "Drill", -- Display name at the Dealer
        blackMoney = false, -- Dealer gives ore take black money form or to the player
        diffFactorToBuy = 1.08, -- what is the different between buy and sale price, 1.08 means 8 % difference
        enableImage = true, -- you can add images in folder "view/items". The image must be the same as in your items sql table. e.g. "drill.png"
    },
    glassbottle = {
        id = 2,
        maxPrice = 25,
        minPrice = 15,
        maxItems = 400,
        itemReducePerTick = 1,
        tickInSeconds = 12,
        label = "Glassbottle",
        blackMoney = false,
        diffFactorToBuy = 1.08,
        enableImage = true,
    },
    marijuana = {
        id = 3,
        maxPrice = 155,
        minPrice = 115,
        maxItems = 400,
        itemReducePerTick = 1,
        tickInSeconds = 12,
        label = "Marijuana",
        blackMoney = true,
        diffFactorToBuy = 1.08,
        enableImage = true,
    },
    weapon_dagger = {
        id = 4,
        maxPrice = 155,
        minPrice = 115,
        maxItems = 200,
        itemReducePerTick = 1,
        tickInSeconds = 12,
        label = "Antique Cavalry Dagger",
        blackMoney = false,
        diffFactorToBuy = 1.08,
        enableImage = true,
        ammo = 100
    },
}
