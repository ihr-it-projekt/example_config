Config = {
    Locale = 'de',
    useQbCore = false, -- if you are using ESX, change this value to false. If you are using QBCore, set value to true
    esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have also change it in es_extended
    qbCoreExportName = 'qb-core', -- for security reasons you can customise the qb-core export name. Attention if you change it, be sure you have also change it in qbCore
    enabledKeysWhenAnimation = { -- https://docs.fivem.net/docs/game-references/controls/
        --38, -- E
        23, -- F
        1, --mouse controls
        2, --mouse controls
        3, --mouse controls
        4, --mouse controls
        5, --mouse controls
        6, --mouse controls
        7, --mouse controls
    },
    farmingArea = {
        {
            coordinate = vector3(2224.2272949219, 5577.224609375, 52.838172912598), -- position of the Location
            scale = 1.0, -- the scale of the blip
            enableBlip = false, -- enable Blip on map, if true, display, sprite, scale, color and name are required
            display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
            sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
            scale = 1.0, -- scale of blip
            color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
            name = 'weedfield', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
            radius = 8.0, -- Radius of the action to register
            marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
            rgba = { 120, 255, 120, 155 }, -- color of marker
            subMarker = { -- not required
                marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                posZ = 4.66, -- z position of the subMarker
            },
            viewZone = false, -- view zone in game
            enablePed = false, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
            pedModel = "csb_car3guy2", -- see https://wiki.rage.mp/index.php?title=Peds
            pedHash = 0x1383A508, -- see https://wiki.rage.mp/index.php?title=Peds
            pedOrientation = 127.24, -- the orientation of the ped
            objects = {
                {
                    --name = "",
                    --coordinate = vector3(2224.2272949219, 5577.224609375, 53.838172912598)
                }
            },
            messages = {
                start_message = 'Drück E um Hanf zu farmen.', -- will displayed if player enter the zone
                has_not_all_needed_items = 'Du hast keine Lizens !', -- will displayed, if player has not all needed items
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !', -- will displayed, if player has to less space.
            },
            itemsNeeded = { -- items that is needed to start process can be empty
                --{
                    --count = 1, -- how many items are needed
                    --name = "water", -- what kind of items is needed
                    --removeAfterProcess = false, -- should the item remove after process
                --}
            },
            harvestItems = { -- the items that the player get after process, can be multiple items
                {
                    name = "cannabis",
                    count = 1,
                },
                -- { -- example for a second item
                --    name = "cannabis2",
                --    count = 1,
                --},
            },
            animation = {  -- Animation config 
                directory = "amb@world_human_gardener_plant@male@idle_a", -- See animation types: https://github.com/KoningJesper/GTA-V-Animation-List/blob/master/Animation%201-999
                name = "idle_b", -- The name from animation
                repeatInMilliseconds = 1000, -- when should the animation repeated
                duration = 6000 -- how long the animation and the farming process take in milliseconds 
            },
        },
        {
            coordinate = vector3(2191.8310546875, 5595.8837890625, 52.768230438232),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = 'weed verarbeiter', 
            radius = 2.5, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = true, 
            pedModel = "g_m_y_ballasout_01",
            pedHash = 0x23B88069,
            pedOrientation = 250.67,
            objects = {
                {
                    -- name = "",
                    --coordinate = vector3(2191.8310546875,5595.8837890625,53.768230438232)
                }
            },
            messages = {
                start_message = 'Drück E um Hanf zu verarbeiten.',
                has_not_all_needed_items = 'Du hast kein Cannabis !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 1,
                    name = "cannabis",
                    removeAfterProcess = true,
                }
            },
            harvestItems = {
                {
                    name = "marijuana",
                    count = 1,
                }
            },
            animation = {
                directory = "mini@repair", 
                name = "fixing_a_ped",
                repeatInMilliseconds = 6000,
                duration = 6000
            },
        },
        {
            coordinate = vector3(-99.235343933105, 1910.2657470703, 197.01683044434),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = 'kokafield', 
            radius = 5.0, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = false, 
            pedModel = "csb_car3guy2",
            pedHash = 0x1383A508,
            pedOrientation = 127.24,
            objects = {
                {
                    name = "p_int_jewel_plant_02",
                    coordinate = vector3(-99.024681091309, 1910.0178222656, 195.59498596191),
                },
                {
                    name = "p_int_jewel_plant_02",
                    coordinate = vector3(-103.30090332031, 1909.8846435547, 195.59498596191),
                },
                {
                    name = "p_int_jewel_plant_02",
                    coordinate = vector3(-99.479530334473, 1907.2567138672, 195.59498596191),
                },
                {
                    name = "p_int_jewel_plant_02",
                    coordinate = vector3(-99.084983825684, 1912.8758544922, 195.59498596191),
                },
                {
                    name = "p_int_jewel_plant_02",
                    coordinate = vector3(-96.571075439453, 1910.2009277344, 195.59498596191),
                }
            },
            messages = {
                start_message = 'Drück E um Kokablatt zu farmen.',
                has_not_all_needed_items = 'Du hast keine Lizens !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 0,
                    name = "water",
                    removeAfterProcess = false,
                }
            },
            harvestItems = {
                {
                    name = "coco_leaf",
                    count = 1,
                }
            },
            animation = {
                directory = "amb@world_human_gardener_plant@male@idle_a", 
                name = "idle_b",
                repeatInMilliseconds = 1000,
                duration = 6000
            },
        },
        {
            coordinate = vector3(-52.83910369873, 1905.63671875, 194.36154174805),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = 'koka verarbeiter', 
            radius = 3.0, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = true, 
            pedModel = "a_m_m_hillbilly_01",
            pedHash = 0x6C9B2849,
            pedOrientation = 89.53,
            objects = {
                {
                    -- name = "",
                    --coordinate = vector3(2191.8310546875,5595.8837890625,53.768230438232)
                }
            },
            messages = {
                start_message = 'Drück E um Kokablatt zu verarbeiten.',
                has_not_all_needed_items = 'Du hast kein Kokablatt !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 1,
                    name = "coco_leaf",
                    removeAfterProcess = true,
                }
            },
            harvestItems = {
                {
                    name = "coco",
                    count = 1,
                }
            },
            animation = {
                directory = "mini@repair", 
                name = "fixing_a_ped",
                repeatInMilliseconds = 6000,
                duration = 6000
            },
        },
        {
            coordinate = vector3(136.0007019043, -3078.9677734375, 5.8963189125061),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = 'chemie 10071', 
            radius = 4.0, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = false, 
            pedModel = "csb_car3guy2",
            pedHash = 0x1383A508,
            pedOrientation = 127.24,
            objects = {
                {
                    --name = "",
                    --coordinate = vector3(3283.9375, 5182.02734375, 17.315376663208),
                }
            },
            messages = {
                start_message = 'Drück E um Chemikalien zu farmen.',
                has_not_all_needed_items = 'Du hast keine Lizens !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 0,
                    name = "chemicalslisence",
                    removeAfterProcess = false,
                }
            },
            harvestItems = {
                {
                    name = "chemicals",
                    count = 1,
                }
            },
            animation = {
                directory = "mini@repair", 
                name = "fixing_a_ped",
                repeatInMilliseconds = 6000,
                duration = 6000
            },
        },
        {
            coordinate = vector3(126.45768737793, -3113.2836914063, 4.9408769607544),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = '2057 chemie verarbeiter', 
            radius = 5.0, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = true, 
            pedModel = "s_m_y_pestcont_01",
            pedHash = 0x48114518,
            pedOrientation = 316.55,
            objects = {
                {
                    --name = "",
                    --coordinate = vector3(-52.83910369873, 1905.63671875, 193.36154174805)
                }
            },
            messages = {
                start_message = 'Drück E um Chemikalien zu verarbeiten.',
                has_not_all_needed_items = 'Du hast keine Chemikalien !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 1,
                    name = "chemicals",
                    removeAfterProcess = true,
                }
            },
            harvestItems = {
                {
                    name = "lsd",
                    count = 1,
                }
            },
            animation = {
                directory = "mini@repair", 
                name = "fixing_a_ped",
                repeatInMilliseconds = 6000,
                duration = 6000
            },
        },
        {
            coordinate = vector3(3285.3647460938, 5183.478515625, 17.415351867676),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = 'mohn 2057', 
            radius = 4.0, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = false, 
            pedModel = "csb_car3guy2",
            pedHash = 0x1383A508,
            pedOrientation = 127.24,
            objects = {
                {
                    name = "prop_plant_fern_01b",
                    coordinate = vector3(3285.3647460938, 5183.478515625, 17.115351867676),
                },
                {
                    name = "prop_plant_fern_01b",
                    coordinate = vector3(3284.4663085938, 5182.484375, 17.115351867676),
                },
                {
                    name = "prop_plant_fern_01b",
                    coordinate = vector3(3286.1435546875, 5184.5190429688, 17.115351867676),
                },
                {
                    name = "prop_plant_fern_01b",
                    coordinate = vector3(3286.4040527344, 5182.6430664063, 17.115351867676),
                },
                {
                    name = "prop_plant_fern_01b",
                    coordinate = vector3(3284.5698242188, 5184.4677734375, 17.115351867676),
                }
            },
            messages = {
                start_message = 'Drück E um Mohn zu farmen.',
                has_not_all_needed_items = 'Du hast keine Lizens !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 0,
                    name = "chemicallicence",
                    removeAfterProcess = false,
                }
            },
            harvestItems = {
                {
                    name = "poppyresin",
                    count = 1,
                }
            },
            animation = {
                directory = "amb@world_human_gardener_plant@male@idle_a", 
                name = "idle_b",
                repeatInMilliseconds = 1000,
                duration = 6000
            },
        },
        {
            coordinate = vector3(3333.1950683594, 5165.1694335938, 17.302536010742),
            scale = 1.0,
            enableBlip = false, 
            display = 4, 
            sprite = 127, 
            scale = 1.0,
            color = 1,
            name = '2057 mohn verarbeiter', 
            radius = 4.0, 
            marker = 27,
            rgba = { 120, 255, 120, 155 }, 
            subMarker = {
                marker = 4, 
                posZ = 4.66, 
            },
            viewZone = false, 
            enablePed = true, 
            pedModel = "a_m_m_hillbilly_02",
            pedHash = 0x7B0E452F,
            pedOrientation = 186.13,
            objects = {
                {
                    --name = "",
                    --coordinate = vector3(-52.83910369873, 1905.63671875, 193.36154174805)
                }
            },
            messages = {
                start_message = 'Drück E um Mohn zu verarbeiten.',
                has_not_all_needed_items = 'Du hast kein Mohn !',
                you_can_not_take_so_much_items = 'Du hast kein Platz mehr !'
            },
            itemsNeeded = {
                {
                    count = 1,
                    name = "poppyresin",
                    removeAfterProcess = true,
                }
            },
            harvestItems = {
                {
                    name = "heroin",
                    count = 1,
                }
            },
            animation = {
                directory = "mini@repair", 
                name = "fixing_a_ped",
                repeatInMilliseconds = 6000,
                duration = 6000
            },
        },
    },
}
