Config = {}
Config.Locale = 'de'
Config.useQBCore = false
Config.EventsThatShouldTriggerAfterSuccessfulWhitelist = { -- you can add here as many events you want. The event receiver get always as first parameter the source of the white listed player
    {
        sendTo = 'client', -- Value can be client or server
        name = 'exampleClientEventName', -- The event name
        active = false, -- enable or disable sending values are true or false
    },
    {
        sendTo = 'server', -- Value can be client or server
        name = 'exampleServerEventName', -- The event name
        active = false, -- enable or disable sending values are true or false
    },
}
Config.waitTimeInSecondsIfTestWasNotCorrect = 3600  -- how long the player must wait for a retry
Config.maxWhiteListTries = 3 -- max tries for a player
Config.importExistingPlayersIntoWhitelistAtFirstStart = false -- all known players will automatically imported
Config.howMuchQuestionsWillAnswered = 2 -- How many question will ask from Questions below
Config.howMuchStaticQuestionsMustAnsweredCorrect = 2 -- How much questions from StaticQuestionsAtTheEnd will ask
Config.howMuchQuestionsMustAnsweredCorrect = 4 -- How much questions must be answered correct from StaticQuestionsAtTheEnd and from Questions
Config.adminIds = { -- this players can use the admin commands
    'steam:xxxxx',
}

Config.useOnlyLicenceId = true -- use licence id instead of steam id for whitlisted players

Config.discord = {
    useDiscordRoleCheck = true, -- if players rejoin your server after whitelist the discord role will assigned
    useDiscordRoleAssignment = true, -- if true then the roles whitelistRoles below will assigned
    useDiscordRoleRemove = true, -- if true then the roles in rolesToRemoveWhenWhitelisted below will removed
    guildId = 0, -- add your guild id here
    botToken = "enter your token here", -- copy that token from boot creation
    whitelistRoles = { -- after white list pass this, roles will assigned
        "0000000000000000" -- add your role id here
    },
    rolesToRemoveWhenWhitelisted = { -- after white list pass this, roles will removed
        "0000000000000000"
    }
}

Questions = {
    {
        question = "What is the minimum age for our server.",
        answers = {
            "16 years",
            "18 years (this is correct)",
            "21 years"
        },
        correctAnswer = 2
    },
    {
        question = "Lorem ipsum",
        answers = {
            "lorem ipsum <b>answer</b> 1 (this is correct)",
            "lorem ipsum answer 2"
        },
        correctAnswer = 1
    },
}

StaticQuestionsAtTheEnd = {
    {
        question = "I agree that i am 18 Years old.",
        answers = {
            "I confirm",
            "No, iam not.",
        },
        correctAnswer = 1
    },
    {
        question = "Lorem ipsum",
        answers = {
            "lorem ipsum <b>answer</b> 1 (this is correct)",
            "lorem ipsum answer 2"
        },
        correctAnswer = 1
    },
}
