Config = {}
Config.Locale = 'en'
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
Config.waitTimeInSecondsIfTestWasNotCorrect = 3600
Config.maxWhiteListTries = 3
Config.importExistingPlayersIntoWhitelistAtFirstStart = false
Config.howMuchQuestionsWillAnswered = 2
Config.howMuchQuestionsMustAnsweredCorrect = 2
Config.adminIds = {
    'steam:11000010e11de1d'
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
    }
}
