Config = { -- This is only am example, configure your own items
    { -- first item
        name = "water", -- item that player can exchange to another item
        amountOfReward = 2, -- how many random rewards the player get
        itemReward = {
            {
                name = "cola",
                label = "Cola",
                amount = 2,
            },
            {
                name = "scratchcard",
                label = "Los",
                amount = 1,
            },
        },
        weaponReward = {
            {
                name = "weapon_pistol",
                label = "Pistole",
                ammo = 30,
            },
        },
        moneyReward = {
            100,
            1000,
        },
        blackMoneyReward = {
            100,
            1000,
        },
    },
    { -- second item
        name = "cola", -- item that player can exchange to another item
        amountOfReward = 2, -- how many random rewards the player get
        itemReward = {
            {
                name = "water",
                label = "water",
                amount = 2,
            },
            {
                name = "scratchcard",
                label = "Los",
                amount = 1,
            },
        },
        weaponReward = {
            {
                name = "weapon_pistol",
                label = "Pistole",
                ammo = 30,
            },
        },
        moneyReward = {
            100,
            1000,
        },
        blackMoneyReward = {
            100,
            1000,
        },
    } -- you can append here more items
}
