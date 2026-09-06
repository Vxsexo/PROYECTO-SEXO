--GLOBAL CONFIG
Config = {
    ESXLibrary = "esx:getSharedObject",
    CapturingTime = 210, --in Sec,
    CheckPlayersForCapturing = false, --That will check 3 players to be near to capture, set to false to capture alone
    MinPlayersToCapture = -1, --If you write here 3 there needs to be YOu and 3 MORE player to start capture
    --DISCORD
    DiscordWebhooks = {
        ZoneCaptured = "https://discord.com/api/webhooks/1161015568313368607/mDofnPBFDwfzev3CyrdIwhFrLNZh2UrcHNGG08D92cyX4R4PCWEMxbGp8LW1E9EuSvmg",
        TryingToCapture = "https://discord.com/api/webhooks/1161015700148715531/sQNerAexgdfkK8lllA0vB9QwnO6g4d7a7N_KuYDDj6jPjTTn6rcw-PHpg7UfsN3e-JMK",
    },
    DiscordBotName = "RetorZonas",
    DiscordHeader = "RetornoRP",
    --REWARD TIME
    RewardTime = 900,  --in sec (900 sec = 15min)
    --LINK FOR BLIPS: https://docs.fivem.net/docs/game-references/blips/
    --BLIPS COLORS
    BlipRadisuFree = 2,  --COLOR GREEN
    BlipRadiusTaken = 1,  --COLOR RED
    --BLIPS ID
    BlipSpiritFree = 197,  --SPIRIT
    BlipSpiritTaken = 303, --SPIRIT
    --REWARDS
    RewardMoneyX = true,  --want to enable money reward ? if not set it to false!
    RewardMoneyY = 30000,  --how much money do you want to reward each player from job that is owning a zone?
    RewardItemX = true, --Do you want item rewards ? if not set it to false
    RewardItemY = 50, --How much items do you want to get it as reward for owning zone?
    RewardItems = {  --List of all items you want to player get if RewardItemX is set to true. .. 
        "armour",
        "ammo-9"

    },
    Gangs = {
        "police"
    },
    Translate = {
        [0] = "~w~[~r~E~w~] ~s~CAPTURAR",
        [1] = "~w~[~r~E~w~] ~s~ÚNETE A LA CAPTURA",
        [5] = " / 3",
        [10] = "Zona Libre",
        [11] = "ESTAS EN LA ZONA ROJA: ~r~",
        [12] = "CONTROLADO POR:",
        [13] = "CAPTURA TIEMPO:",
        [14] = "Ya está controlado este lugar.",
        [15] = "Si desea capturar, debe haber al menos 3 miembros de tu gang.",
        [16] = "LA ZONA SE ESTÁ CAPTURANDO ACTUALMENTE. TIEMPO RESTANTE: ",
        [20] = "Está siendo capturada por :",
        [21] = "Captura fallida!",
        [22] = "Con",
        [23] = "han capturado una zona:",
        [24] = "está tratando de capturar una zona: "
    }
}