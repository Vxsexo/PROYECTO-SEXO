ESX = nil
local a = {}
TriggerEvent(
    Config.ESXLibrary,
    function(b)
        ESX = b
    end
)
AddEventHandler(
    "onResourceStart",
    function(c)
        if c == GetCurrentResourceName() then
            MySQL.ready(
                function()
                    getServerZones()
                end
            )
        end
    end
)
function getServerZones()
    MySQL.Async.fetchAll(
        "SELECT * FROM `esegovic_zones`",
        {},
        function(d)
            a = d
        end
    )
end
ESX.RegisterServerCallback(
    "esegovic:getZones",
    function(source, e)
        e(a)
    end
)
FirstLetterUpperCase = function(f)
    return f:gsub("^%l", string.upper)
end
RefreshClient = function()
    for g in pairs(a) do
        a[g] = nil
    end
    Wait(100)
    MySQL.Async.fetchAll(
        "SELECT * FROM `esegovic_zones`",
        {},
        function(d)
            a = d
            TriggerClientEvent("esegovic:UpdatedClient", -1, a)
        end
    )
end
RegisterServerEvent("esegovic:messageCapturing")
AddEventHandler(
    "esegovic:messageCapturing",
    function(h, i, j)
        TriggerEvent("esegovic.discordLog.ttc", source, j, i)
        TriggerClientEvent(
            "chatMessage",
            -1,
            "^1[TERRITORIES] ^3" .. i .. " ^7" .. Config.Translate[20] .. " ^1" .. FirstLetterUpperCase(h)
        )
    end
)
RegisterServerEvent("esegovic:syncTimer")
AddEventHandler(
    "esegovic:syncTimer",
    function(h, j, i, k)
        TriggerClientEvent("esegovic:syncTimerClient", -1, h, j, i, k)
    end
)
RegisterServerEvent("esegovic:capturingFailed")
AddEventHandler(
    "esegovic:capturingFailed",
    function(h, j, i, k)
        TriggerClientEvent("chatMessage", -1, "^1[TERRITORIES] ^3" .. i .. " ^7" .. Config.Translate[21])
        TriggerClientEvent("esegovic:refreshZones", -1)
    end
)
RegisterServerEvent("esegovic:ZoneCaptured")
AddEventHandler(
    "esegovic:ZoneCaptured",
    function(h, l, j)
        TriggerEvent("esegovic.discordLog.zc", source, j, l)
        MySQL.Async.fetchAll(
            "SELECT zone FROM esegovic_zones WHERE zone = @zone",
            {["@zone"] = l},
            function(m)
                if #m > 0 then
                    MySQL.Async.execute(
                        "UPDATE esegovic_zones SET job = @job, owner = @owner WHERE zone = @zone",
                        {["@zone"] = l, ["owner"] = j, ["@job"] = h}
                    )
                    RefreshClient()
                end
            end
        )
    end
)
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(Config.RewardTime * 1000)
            for g, n in pairs(a) do
                if n.owner ~= noowner then
                    if n.job ~= nojob then
                        local o = ESX.GetPlayers()
                        for p = 1, #o do
                            local q = ESX.GetPlayerFromId(o[p])
                            if q["job"]["name"] == n.job then
                                if Config.RewardMoneyX then
                                    q.addMoney(Config.RewardMoneyY)
                                end
                                if Config.RewardItemX then
                                    for g, n in pairs(Config.RewardItems) do
                                        q.addInventoryItem(n, Config.RewardItemY)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
SendDiscordMessage = function(r, s, t)
    PerformHttpRequest(
        Config.DiscordWebhooks[t],
        function(u, v, w)
        end,
        "POST",
        json.encode(
            {
                username = Config.DiscordBotName,
                embeds = {
                    {
                        ["color"] = s,
                        ["author"] = {["name"] = Config.DiscordHeader},
                        ["description"] = "" .. r .. "",
                        ["footer"] = {["text"] = "© RetornoRP - " .. os.date("%x %X %p")}
                    }
                }
            }
        ),
        {["Content-Type"] = "application/json"}
    )
end
RegisterNetEvent("esegovic.discordLog.ttc")
AddEventHandler(
    "esegovic.discordLog.ttc",
    function(source, h, i)
        SendDiscordMessage(
            "**" ..
                GetPlayerName(source) ..
                    "** " .. Config.Translate[22] .. " **" .. h .. "** " .. Config.Translate[24] .. " ** " .. i .. "** ",
            56108,
            "TryingToCapture"
        )
    end
)
RegisterNetEvent("esegovic.discordLog.zc")
AddEventHandler(
    "esegovic.discordLog.zc",
    function(source, j, i)
        SendDiscordMessage(
            "**" ..
                GetPlayerName(source) ..
                    "** " .. Config.Translate[22] .. " **" .. j .. "** " .. Config.Translate[23] .. " **" .. i .. "** ",
            56108,
            "ZoneCaptured"
        )
    end
)
