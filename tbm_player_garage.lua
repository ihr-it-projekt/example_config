Config = {
    Locale = 'de',
    esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
    blackListCars = {  -- cars who can not be sold see https://wiki.rage.mp/index.php?title=Vehicles
        "police3",
        "PDF1502",
        "riot",
        "bearcat",
        "SDF150",
        "SDCharger18",
        "fbi",
        "stockade",
        "pbus",
        "predator",
        "polamggtr",
        "polmav",
    },
    allowedGrounds = {  -- if this is empty, all grounds are allowed, take a look into readme int "How to configure ground" section
    },
    positionConfig = {
        name = "Deine Garage", -- Name of the Blip
        display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
        sprite = 380, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
        scale = 1.2, -- scale of blip
        color = 66, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
        radius = 5.0, -- Radius of the action to open the market
        viewZone = true, -- view register register zone in game, if true marker, rgba and subMarker is needed
        marker = 36, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
        rgba = { 030, 144, 255, 155 }, -- color of marker
        subMarker = {
            marker = 36, -- marker type see https://docs.fivem.net/docs/game-references/markers/
        },
    },
    itemName = "garage",
    maxGaragesPerPlayer = 1, -- -1 = unlimited garages per player
    priceSlotUpdate = 100000, -- Price per garage update
    maxSlotsPerGarage = -1, -- -1 = unlimited garages slots per garage
}




