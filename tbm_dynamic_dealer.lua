Config = {}

Config.Locale = 'de'

Config.roundMoneyPositions = 0 -- if you use another currency system then esx default. 0 means you only have number like 1, number like 2 means float values like 1.22

Config.esxExtendedName = 'es_extended' -- How you have named your es_extended mod, if you have renamed it.

Config.qbCoreExportName = 'qb-core' -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
Config.qbCoreInventoryExportName = 'ox_inventory' -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
Config.useQbCoreAddRemoveItems = false -- if you want to use Player.Functions.RemoveItem and Player.Functions.AddItem (Older QB-Core Version Versions) set this value to true. If true (recommended) the qb inventory Add and RemoveItem functions will used
Config.useQbCore = false -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
Config.qbCore = { -- only important if you are using qb core framework
    blackMoneyName = 'black_money' -- Be sure you have configured black money in qb core
}

Config.useOxmysql = true -- if you are using https://github.com/overextended/oxmysql

Config.esxEventNames = { -- used esx events can here renamed, if you use a anti cheat tool
    setJob = 'esx:setJob',
    playerLoaded = 'esx:playerLoaded',
    sendMessage = 'esx:showNotification',
}

Config.viewRangeForMarkers = 50 -- Player must be in this range that all markers will be rendered

Config.policeJobName = 'police' -- Name of your police job

Config.weaponsAreItems = false -- You have a Server where your weapons are items, set this value to true and put your weapons in TraderLocations.items section instead of TraderLocations.weapons

Config.TraderLocations = {
--    {
--        label = 'Drug Dealer', -- name of the dealer
--        coords = vector3(-1174.1408691406, -1573.4897460938, 3.3710079193115), -- position of the dealer
--        enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and label are required
--        color = 6, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
--        sprite = 378,-- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
--        marker = 23, -- marker type see https://docs.fivem.net/docs/game-references/blips/
--        scale = 0.8, -- scale of blip
--        radius = 5.0, -- Radius of the action to open the dealer
--        viewZone = true, -- view zone in game
--        rgba = { 120, 255, 120, 155 }, -- color of marker
--        subMarker = {
--            marker = 29, -- marker type see https://docs.fivem.net/docs/game-references/markers/
--            posz = 3.66, -- z position of the subMarker
--       },
--        items = { -- Define here which items you can trade at the dealer position
--           {
--                name = "marijuana", -- the name from items sql table
--                playerCanNotSell = false, -- player can not sale the item if value is true
--                playerCanNotBuy = false, -- player can not buy the item if value is true
--            },
--            --{ -- Example if you have option Config.weaponsAreItems  = true, then you have to remove the weapons in weapons section
--            --    name = "weapon_dagger",
--            --    playerCanNotSell = false, -- player can not sale the item if value is true
--            --    playerCanNotBuy = false, -- player can not buy the item if value is true
--            --}
--        },
--        weapons = {
--           {
--                name = "weapon_dagger",
--                playerCanNotSell = false, -- player can not sale the item if value is true
--                playerCanNotBuy = false, -- player can not buy the item if value is true
--            }
--        },
--        enablePed = false, -- Enable the ped. pedModel and pedOrientation is needed if you enable this options
--        pedModel = "mp_m_freemode_01", -- see https://docs.fivem.net/docs/game-references/ped-models/
--        pedOrientation = 0.0,  -- the orientation of the ped
--        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
--            player = true, -- enable this option with true, disable with false
--            bank = true, -- enable this option with true, disable with false
--        },
--        isJobTrader = true, -- is this trader only for a job ?
--        job = "police", -- what is the job when trade is a job a job trader
--        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
--            "recruit",
--        },
--        useJobMoneyAccountWhenPlayerSell = true, -- this option enable when player sell items, the money will transferred to job bank account
--        sellerProvisionWhenSell = 10.0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
--        jobAccountName = 'police', -- the job account name
--        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
--        requiredCountOfCops = 1, -- how many cops must be online that player can trade at that location
--    },

--    {
--        label = 'Digital Den',
--        coords = vector3(-1189.4425048828, -1549.7603759766, 3.475670337677),
--        enableBlip = true,
--        color = 6,
--        sprite = 162,
--        marker = 23,
--        scale = 0.8,
--        radius = 2.0,
--        viewZone = false,
--        rgba = { 120, 255, 120, 155 },
--       subMarker = {
--            marker = 29,
--            posz = 4.66
--        },
--        items = {
--            {
--                name = "bread", -- the name from items sql table
--                playerCanNotSell = false, -- player can not sale the item if value is true
--                playerCanNotBuy = false, -- player can not buy the item if value is true
--            },
--            {
--               name = "bandage", -- the name from items sql table
--                playerCanNotSell = false, -- player can not sale the item if value is true
--                playerCanNotBuy = false, -- player can not buy the item if value is true
--            },
--        },
--        enablePed = true, -- enable peds on trade location
--        pedModel = "mp_m_freemode_01",
--        pedOrientation = 120.0,
--        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
--            player = true, -- enable this option with true, disable with false
--            bank = true, -- enable this option with true, disable with false
--        },
--        isJobTrader = false, -- is this trader only for a job ?
--        job = "police", -- what is the job when trade is a job a job trader
--        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
--            "recruit",
--        },
--        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
--        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
--        jobAccountName = '', -- the job account name
--        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
--        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
--    },

    {
        label = 'Apotheke',
        coords = vector3(-508.9143, 292.6462, 82.3882),
        enableBlip = false,
        color = 52,
        sprite = 153,
        marker = 23,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "bandage", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "medikit", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "distilled_water", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_doctor_01",
        pedOrientation = 171.5039,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'Apotheke',
        coords = vector3(-586.9843, -601.6034, 33.68),
        enableBlip = false,
        color = 52,
        sprite = 153,
        marker = 23,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "bandage", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "medikit", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "distilled_water", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_doctor_01",
        pedOrientation = 273.3915,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'PipeDown',
        coords = vector3(120.2493, -1332.4750, 28.2422),
        enableBlip = false,
        color = 21,
        sprite = 628,
        marker = 23,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "tobacco", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "papes", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "lighter", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cigar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cubancigar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "fiftycigar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "lemonvape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "icevape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "grapevape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "applevape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "u_m_y_chip",
        pedOrientation = 123.9054,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'Apotheke',
        coords = vector3(110.5877, -219.7144, 53.7017),
        enableBlip = false,
        color = 52,
        sprite = 153,
        marker = 23,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "bandage", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "medikit", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "distilled_water", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_doctor_01",
        pedOrientation = 69.6961,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    }, 

    {
        label = 'Lebensmittelhändler',
        coords = vector3(51.9449, -1736.4172, 28.3586),
        enableBlip = true,
        color = 2,
        sprite = 77,
        marker = 23,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "sugar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "salami", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cheese", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "apple", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "grape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "wgrape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "orange", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "strawberry", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "jam", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "weat", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "flour", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "bread", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "tomatos", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "salad", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "steak", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "wildsteak", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "saucisson", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "bluefish", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_ammucountry",
        pedOrientation = 45.14,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = false, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'Jagd & Campingbedarf',
        coords = vector3(1523.31, 1673.65, 109.79),
        enableBlip = true,
        color = 25,
        sprite = 557,
        marker = 23,
        scale = 0.6,
        radius = 1.9,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "skin_deer", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "deerhorns", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "skin_coyote", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "flesh_pig", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "rabbitpelt", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "pelt", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "skin_boar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "coyotepelt", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "pelt_deer", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "pelt_boar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "tuna", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "salmon", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "trout", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "anchovy", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "catfish", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "bluefish", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "carp", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_cntrybar_01",
        pedOrientation = 265.5193,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'Feuerwerk',
        coords = vector3(1224.8108, -390.9033, 67.7291),
        enableBlip = false,
        color = 52,
        sprite = 153,
        marker = 23,
        scale = 0.6,
        radius = 2.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "firework_1", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "firework_2", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "firework_3", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "firework_4", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "fontain_4", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "u_f_o_eileen",
        pedOrientation = 33.0884,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'PipeDown',
        coords = vector3(-268.2890, 6235.5493, 30.4752),
        enableBlip = false,
        color = 21,
        sprite = 628,
        marker = 23,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "tobacco", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "papes", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "lighter", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cigar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cubancigar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "fiftycigar", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "lemonvape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "icevape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "grapevape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "applevape", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "u_m_y_chip",
        pedOrientation = 42.5792,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'Baumarkt',
        coords = vector3(2749.4304, 3483.5981, 54.6663),
        enableBlip = true,
        color = 2,
        sprite = 643,
        marker = 2,
        scale = 0.6,
        radius = 3.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "aluminium", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "bauxit", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "battery_acid", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "carbon", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "carbonfibre", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "charcoal", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "clay", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "coal", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "coalingot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_blue", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_green", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_orange", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_pink", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_purple", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_red", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "color_yellow", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "concrete", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "copper", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "copperingot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cotton_fibers", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cutted_wood", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "fabric_scraps", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "glass", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "gold", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "goldingot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "graphite", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "gum", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "gunpowder", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "iron", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "ironingot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "lithium", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "muck", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "oil", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "packaged_plank", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "paper", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "paperbag", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "plastic", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "potassium", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "quellwasser", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "rubber", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "sand", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "silver", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "silveringot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "steelingot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "sulfur", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "stone", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "washed_stone", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "wood", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "wooden_board", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "wool", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_autoshop_01",
        pedOrientation = 61.1788,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },

    {
        label = 'Werzeuge und Mehr',
        coords = vector3(2751.2332, 3488.1040, 54.6635),
        enableBlip = false,
        color = 52,
        sprite = 153,
        marker = 23,
        scale = 0.6,
        radius = 2.0,
        viewZone = false,
        rgba = { 120, 255, 120, 155 },
        subMarker = {
            marker = 29,
            posz = 4.66
        },
        items = {
            {
                name = "battery", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "bin", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "cardboard", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "earth", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "fertilizer", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "firestone", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "gasoline", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "gazbottle", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "glass_bottle", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "hammer", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "pickaxe", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "pot", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "rope", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "scissors", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "scrapmetal", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "screws", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "shovel", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "trash_can", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "woodencase", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
            {
                name = "WEAPON_FLASHLIGHT", -- the name from items sql table
                playerCanNotSell = false, -- player can not sale the item if value is true
                playerCanNotBuy = false, -- player can not buy the item if value is true
            },
        },
        enablePed = true, -- enable peds on trade location
        pedModel = "s_m_m_autoshop_01",
        pedOrientation = 62.0662,
        useMoneyFrom = { -- options are "player" and "bank", the order is important. First account will always taken for first action
            player = true, -- enable this option with true, disable with false
            bank = true, -- enable this option with true, disable with false
        },
        isJobTrader = false, -- is this trader only for a job ?
        job = "police", -- what is the job when trade is a job a job trader
        jobGradesExclude = { -- which job grades have no access to the trader, if it is empty, every job grad from configured job can access
            "recruit",
        },
        useJobMoneyAccountWhenPlayerSell = false, -- this option enable when player sell items, the money will transferred to job bank account
        sellerProvisionWhenSell = 0, -- If it is a job trader and option "useJobMoneyAccountWhenPlayerSell" is enabled, players can get a provision when selling items
        jobAccountName = '', -- the job account name
        onlyJobAccountRelatedPlayerCanSell = false, -- only player who has the job can sell items here
        requiredCountOfCops = 0, -- how many cops must be online that player can trade at that location
    },
}

Config.DynamicTraderItems = {
    bread = { -- the name from items sql table
        id = 1, -- Id must be a unique number value
        maxPrice = 5, -- max price when storage is empty
        minPrice = 3, -- min price if storage is full
        maxItems = 4000, -- how big is the storage of the item
        itemReducePerTick = -50, -- 0 = Items will never reduce
        tickInSeconds = 300, -- how long is one tick that item will reduced
        label = "Brot", -- Display name at the Dealer
        blackMoney = false, -- Dealer gives ore take black money form or to the player
        diffFactorToBuy = 1.1, -- what is the different between buy and sale price, 1.08 means 8 % difference
        enableImage = true, -- you can add images in folder "view/items". The image must be the same as in your items sql table. e.g. "drill.png"
    },
    bandage = {
        id = 2,
        maxPrice = 850,
        minPrice = 650,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Bandage",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
    },
    medikit = {
        id = 3,
        maxPrice = 1250,
        minPrice = 1000,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Medikit",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
    },
    distilled_water = {
        id = 4,
        maxPrice = 10,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "dest. Wasser",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
    },
    salami = {
        id = 5,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Salami",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
    },
    cheese = {
        id = 6,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Käse",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    sugar = {
        id = 7,
        maxPrice = 10,
        minPrice = 7,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Zucker",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    apple = {
        id = 8,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Apfel",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    grape = {
        id = 9,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Traube",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    orange = {
        id = 10,
        maxPrice = 8,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Orange",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    strawberry = {
        id = 11,
        maxPrice = 4,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Erdbeere",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    weat = {
        id = 12,
        maxPrice = 10,
        minPrice = 7,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Weizen",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    flour = {
        id = 13,
        maxPrice = 11,
        minPrice = 7,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Mehl",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    tomatos = {
        id = 14,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Tomate",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    skin_deer = {
        id = 15,
        maxPrice = 175,
        minPrice = 155,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Rehhaut",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    deerhorns = {
        id = 16,
        maxPrice = 250,
        minPrice = 175,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Rehgeweih",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    skin_coyote = {
        id = 17,
        maxPrice = 165,
        minPrice = 145,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kojotenhaut",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    flesh_pig = {
        id = 18,
        maxPrice = 100,
        minPrice = 85,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schweinehaut",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    rabbitpelt = {
        id = 19,
        maxPrice = 65,
        minPrice = 50,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Hasenfell",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    pelt = {
        id = 20,
        maxPrice = 50,
        minPrice = 40,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Fell",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    skin_boar = {
        id = 21,
        maxPrice = 185,
        minPrice = 165,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Wildschweinhaut",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    coyotepelt = {
        id = 22,
        maxPrice = 175,
        minPrice = 155,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kojotenfell",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    pelt_deer = {
        id = 23,
        maxPrice = 185,
        minPrice = 165,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Rehfell",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    pelt_boar = {
        id = 24,
        maxPrice = 155,
        minPrice = 135,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Wildschweinfell",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    tuna = {
        id = 25,
        maxPrice = 10,
        minPrice = 7,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Tunfisch",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    salmon = {
        id = 26,
        maxPrice = 15,
        minPrice = 11,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Lachs",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    trout = {
        id = 27,
        maxPrice = 9,
        minPrice = 6,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Forelle",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    anchovy = {
        id = 28,
        maxPrice = 6,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Anchovis",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    catfish = {
        id = 29,
        maxPrice = 8,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Wels",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    bluefish = {
        id = 30,
        maxPrice = 9,
        minPrice = 6,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Blaubarsch",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    carp = {
        id = 31,
        maxPrice = 8,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Karpfen",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    tobacco = {
        id = 32,
        maxPrice = 8,
        minPrice = 6,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Tabak",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    papes = {
        id = 33,
        maxPrice = 9,
        minPrice = 7,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Papes",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    lighter = {
        id = 34,
        maxPrice = 15,
        minPrice = 10,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Feuerzeug",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    cigar = {
        id = 35,
        maxPrice = 25,
        minPrice = 19,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Zigarre",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    cubancigar = {
        id = 36,
        maxPrice = 55,
        minPrice = 45,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kuba Zigarre",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    fiftycigar = {
        id = 37,
        maxPrice = 75,
        minPrice = 60,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "50er Zigarre",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    lemonvape = {
        id = 38,
        maxPrice = 150,
        minPrice = 125,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Vape - Zitrone",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    icevape = {
        id = 39,
        maxPrice = 150,
        minPrice = 125,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Vape - Ice",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    berryvape = {
        id = 40,
        maxPrice = 150,
        minPrice = 125,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Vape - Traube",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    applevape = {
        id = 41,
        maxPrice = 150,
        minPrice = 125,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Vape - Apfle",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    firework_1 = {
        id = 42,
        maxPrice = 350,
        minPrice = 295,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Batterie - 50 Schuss",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    firework_2 = {
        id = 43,
        maxPrice = 550,
        minPrice = 495,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Batterie - 80 Schuss",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    firework_3 = {
        id = 44,
        maxPrice = 550,
        minPrice = 495,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Batterie - 80 Schuss",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    firework_4 = {
        id = 45,
        maxPrice = 350,
        minPrice = 295,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Batterie - 50 Schuss",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    fontain_4 = {
        id = 46,
        maxPrice = 550,
        minPrice = 495,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Fontäne - 80 Schuss",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    jam = {
        id = 47,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Marmelade",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    steak = {
        id = 48,
        maxPrice = 15,
        minPrice = 11,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Steak",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    wildsteak = {
        id = 49,
        maxPrice = 20,
        minPrice = 17,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Wildsteak",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
        saucisson = {
        id = 50,
        maxPrice = 9,
        minPrice = 7,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Bratwurst",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    wgrape = {
        id = 51,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Weiße Traube",
        blackMoney = false,
        diffFactorToBuy = 1.1,
        enableImage = true,
        ammo = 100
    },
    aluminium = {
        id = 52,
        maxPrice = 4.8,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Aluminium",
        blackMoney = false,
        diffFactorToBuy = 1.7,
        enableImage = true,
        ammo = 100
    },
    bauxit = {
        id = 53,
        maxPrice = 3,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Bauxiterz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    carbon = {
        id = 54,
        maxPrice = 5,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Carbon",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    carbonfibre = {
        id = 55,
        maxPrice = 7,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Carbonfaser",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    charcoal = {
        id = 56,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Holzkohle",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    clay = {
        id = 57,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Ton",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    coal = {
        id = 58,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kohle",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    coalingot = {
        id = 59,
        maxPrice = 6,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kohlebricketts",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    copper = {
        id = 60,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kupfererz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    copperingot = {
        id = 61,
        maxPrice = 8,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kupfer",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    cotton_fibers = {
        id = 62,
        maxPrice = 3,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Baumwollfaser",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    cutted_wood = {
        id = 63,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Gehacktes Holz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    fabric_scraps = {
        id = 64,
        maxPrice = 7,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Stofffetzen",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    glass = {
        id = 65,
        maxPrice = 4,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Glas",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    gold = {
        id = 66,
        maxPrice = 5,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Golderz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    goldingot = {
        id = 67,
        maxPrice = 10,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Gold",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_blue = {
        id = 68,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Blau",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_green = {
        id = 69,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Grün",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_orange = {
        id = 70,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Orange",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_pink = {
        id = 71,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Pink",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_purple = {
        id = 72,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Lila",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_red = {
        id = 73,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Rot",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    color_yellow = {
        id = 74,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Farbstoff - Gelb",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    concrete = {
        id = 75,
        maxPrice = 6,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Beton",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    graphite = {
        id = 76,
        maxPrice = 5,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Graphit",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    gum = {
        id = 77,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Gummi",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    gunpowder = {
        id = 78,
        maxPrice = 7,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schießpulver",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    iron = {
        id = 79,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Eisenerz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    ironingot = {
        id = 80,
        maxPrice = 8,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Eisen",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    lithium = {
        id = 81,
        maxPrice = 7,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Lithium",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    muck = {
        id = 82,
        maxPrice = 4,
        minPrice = 2,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Mist",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    oil = {
        id = 83,
        maxPrice = 6,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Erdöl",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    packaged_plank = {
        id = 84,
        maxPrice = 6,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Holzpaket",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    paper = {
        id = 85,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Papier",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    paperbag = {
        id = 86,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Papiertüte",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    plastic = {
        id = 87,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Plastik",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    potassium = {
        id = 88,
        maxPrice = 7,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kalium",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    quellwasser = {
        id = 89,
        maxPrice = 3,
        minPrice = 1,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Quellwasser",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    rubber = {
        id = 90,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kautschuk",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    sand = {
        id = 91,
        maxPrice = 6,
        minPrice = 4,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Sand",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    silver = {
        id = 92,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Silbererz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    silveringot = {
        id = 93,
        maxPrice = 8,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Silber",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    steelingot = {
        id = 94,
        maxPrice = 9,
        minPrice = 5,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Stahl",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    stone = {
        id = 95,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Stein",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    sulfur = {
        id = 96,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schwefel",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    washed_stone = {
        id = 97,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Kieselstein",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    wood = {
        id = 99,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Holz",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    wooden_board = {
        id = 100,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Holzbretter",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    wool = {
        id = 101,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Wolle",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    battery = {
        id = 102,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Batterie",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    battery_acid = {
        id = 103,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Batteriesäure",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    cardboard = {
        id = 104,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Karton",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    wool = {
        id = 105,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Wolle",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    earth = {
        id = 106,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Blumenerde",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    fertilizer = {
        id = 107,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Dünger",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    firestone = {
        id = 108,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Feuerstein",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    gasoline = {
        id = 109,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Benzin",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    gazbottle = {
        id = 111,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Gasflasche",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    glass_bottle = {
        id = 112,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Glasflasche",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    hammer = {
        id = 113,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Hammer",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    pickaxe = {
        id = 114,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Spitzhacke",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    pot = {
        id = 115,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Blumentopf",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    rope = {
        id = 116,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Seil",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    scissors = {
        id = 117,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schere",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    scrapmetal = {
        id = 118,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schrott",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    screws = {
        id = 119,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schrauben",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    shovel = {
        id = 120,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Schaufel",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    trash_can = {
        id = 121,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "leere Dose",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    woodencase = {
        id = 122,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Holzschachtel",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
    WEAPON_FLASHLIGHT = {
        id = 122,
        maxPrice = 5,
        minPrice = 3,
        maxItems = 4000,
        itemReducePerTick = -50,
        tickInSeconds = 300,
        label = "Taschenlampe",
        blackMoney = false,
        diffFactorToBuy = 2,
        enableImage = true,
        ammo = 100
    },
}
