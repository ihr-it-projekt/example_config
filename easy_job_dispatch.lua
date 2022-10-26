Config = {
    esxExtendedName = 'es_extended', -- How you have named your es_extended mod, if you have renamed it.
    displayDispatchDoesNotExists = "No Job available.", -- Message will displayed when no dispatch for job is found
    displayDispatchAccepted = "Job was taken.", -- Message will displayed when dispatch was accepted
    displayDispatchDeleted = "Job was deleted.", -- Message will displayed when dispatch was deleted
    displayDispatchAlreadySend = "Dispatch was already send.", -- Message will displayed when dispatch was already send by player
    descriptionCommandTakeDispatch = "To take a dispatch.", -- Command help text for takeDispatch
    descriptionCommandDeleteDispatch = "To delete a dispatch", --Command help text for deleteDispatch
    descriptionCommandShowDispatches = "To show current dispatches", -- Command help text for showDispatches
    dispatchLocation = {
        {
            coordinate = vector3(-1027.3344726563, -2731.5017089844, 12.756637573242), -- position of the location
            enableBlip = true, -- enable Blip on map, if true, display, sprite, scale, color and name are required
            display = 4, -- see displayId on https://docs.fivem.net/natives/?_0x9029B2F3DA924928
            sprite = 127, -- blip symbol on map, see: https://docs.fivem.net/docs/game-references/blips/
            scale = 1.0, -- scale of blip
            color = 1, -- color of blip, see https://docs.fivem.net/docs/game-references/blips/
            name = 'Taxi call Airport', -- the name of the track, if you change this value you also have to change it in tbm_race database table, otherwise it will create new database entries
            radius = 2.0, -- Radius of the action to register
            marker = 27, -- marker type see https://docs.fivem.net/docs/game-references/checkpoints/
            rgba = { 120, 255, 120, 155 }, -- color of marker
            subMarker = {
                marker = 4, -- marker type see https://docs.fivem.net/docs/game-references/markers/
                posZ = 4.66, -- z position of the subMarker
            },
            viewZone = true, -- view zone in game
            enablePed = true, -- Enable the ped. pedModel, pedHash and pedOrientation is needed if you enable this options
            pedModel = "csb_car3guy2", -- see https://wiki.rage.mp/index.php?title=Peds
            pedHash = 0x1383A508, -- see https://wiki.rage.mp/index.php?title=Peds
            pedOrientation = 96.0, -- the orientation of the ped
            job = "taxi", -- job name, must be the same as in your jobs table
            displayMessageWhenPlayerInZone = "Press ~g~E ~w~ to call a taxi.", -- Message will displayed when player enter the coordinate
            displayMessageWhenReceiveDispatch = "A taxi will required at airport.", -- Message will displayed when player receive a dispatch
            displayMessageIfJobIsNotOnline = "No taxi available.", -- Message will displayed when no player is online who owned the job
            displayMessageIfDispatchWasSend = "A taxi was called.", -- Message will displayed when player send a dispatch
            displayMessageIfDispatchWasAccepted = "Taxi is on the way.", -- Message will displayed when the dispatch was accepted
        },
    }
}
