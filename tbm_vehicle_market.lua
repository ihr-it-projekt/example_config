Config = {
    Locale = 'en',
    esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
    blackListCars = {  -- cars who can not be sold see https://wiki.rage.mp/index.php?title=Vehicles
        "Prairie",
        "bison",
    },
    advertiseDurations = {
        {
            label = "One Day (1000$)",
            value = 1,
            price = 1000
        },
        {
            label = "2 Days (2000$)",
            value = 2,
            price = 2000
        },
        {
            label = "3 Days (3000$)",
            value = 3,
            price = 3000
        }
    },
    marketPosition = {
        {
            coords = vector3(-1175.9554443359,-726.44567871094,19.805015182495), -- position of the location
            coordsVehicleSpawn = vector3(-1169.4233398438,-724.27142333984,19.771476745605), -- position of the spawn car location,
            coordsVehicleHeading = 302.0, -- orientation of the spawn car location
            coordsPreview = vector3(-1225.4389648438,-662.37341308594,39.857517242432), -- position of the spawn car location,
            coordsPreviewHeading = 34.0, -- orientation of the spawn car location
            enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
            name = "Car Market", -- Name of the Blip
            display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
            sprite = 380, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
            scale = 1.2, -- scale of blip
            color = 66, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
            radius = 5.0, -- Radius of the action to open the market
            viewZone = true, -- view register register zone in game, if true marker, rgba and subMarker is needed
            marker = 25, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
            rgba = { 120, 255, 120, 155 }, -- color of marker
            subMarker = {
                marker = 36, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                posZ = 20.5, -- z position of the subMarker
            },
            enablePed = false, -- Enable the ped. pedModel and pedOrientation is needed if you enable this options
            pedModel = "a_m_y_business_01", -- ped model, see https://docs.fivem.net/docs/game-references/ped-models/
            pedOrientation = 65.981, -- orientation of the ped
        }
    }
}
