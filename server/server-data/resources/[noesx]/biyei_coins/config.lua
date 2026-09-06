Config = {}

Config.Framework = 'esx' --- You can change Framework 'esx' or 'qb-core'

Config.LogoURL = 'https://cdn.discordapp.com/attachments/1126187302868226130/1148124231381565470/logo2.png?ex=661cb803&is=660a4303&hm=572f433bbb2aad3e0f0cb896b459e323ab5e75ee5404cf54d1e8728b5a0f12f9&'
Config.Command = 'coins'
Config.OpenCoinsKey = 'O'

--- Main Customize

Config.TitleMenu = 'Coins Menu'
Config.TextMenu = 'Your Server Name Coins:'

--- Rewards System
Config.EnabledTimeReward = true
Config.TimeReward = 60  --- In minutes
Config.CoinsReward = 1 
Config.AccountType = 'coins'
Config.TextNotiRewards = 'Recibiste 1 Coin por tu tiempo de actividad'


function notify()
    if Config.Framework == 'esx' then
        ESX = exports['es_extended']:getSharedObject()
        ESX.ShowNotification(Config.TextNotiRewards..Config.CoinsReward.. ' Server Name Coins')
    elseif Config.Framework == 'qb-core' then
        QBCore = exports['qb-core']:GetCoreObject()
        QBCore.Functions.Notify(Config.TextNotiRewards..Config.CoinsReward.. ' Server Name Coins', 'success', 7500)
    end 

end