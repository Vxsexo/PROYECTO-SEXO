Config = {}

Config.Webhook = 'https://discord.com/api/webhooks/1160727919329554490/q6sawUfYh9vpC769LR_dn-Y5swrq-LiEN5gUkxUOcSLcH1Hf8X1Bv-RM5dzZWWqLx4be'
Config.ESXTrigger = 'esx:getSharedObject'

Config.WeedPrice = '2500'
Config.CokePrice = '4000'
Config.MethPrice = '6500'

Config.AllCoords = {
    Dealer = {
        Type = "Dealer", -- Don't Change
        Text = "~r~[E]~w~ Hablar con el camello",
        WeedName = "Marihuana",
        CokeName = "Coca",
        MethName = "Metanfetamina",
        ProgressBarText = 'Hablando con el camello...',
        WeedSellText = 'Vender tu Marihuana por: 2500$',
        CokeSellText = 'Vender tu Coca por: 4000$',
        MethSellText = 'Vender tu Metanfetamina por: 6500$', 
        Zones = {
            PlaceOne = {x= 1417.266, y= 6344.191, z= 23.2, heading= 262.00}, -- VENTA DE DROGAS 3029
        } 
    }, 
    WeedPluk = {
        Type = "WeedPluk", -- Don't Change
        Text = "Pulsa ~r~[E]~w~ para recoger marihuana",
        ProgressBarText = 'Recogiendo marihuana',
        ServerEventTrigger = "jz-drugs:GeefWiet", -- Don't Change
        CommandRun = "qazxcderfcvfes1", -- Don't Change
        Zones = {
            PlaceOne = {x = 2231.784, y = 5574.342, z = 53.941}, -- 3031 ZONA ROJA MARIHUANA
            PlaceTwo = {x = 2233.51, y = 5576.425, z = 54.066}, 
            PlaceThree = {x = 2232.422, y = 5577.823, z = 53.9}, 
            PlaceFour = {x = 2228.596, y = 5576.722, z = 53.904}, 
            PlaceFive = {x = 2225.921, y = 5578.466, z = 53.763}, 
        }
    },
    WeedVerpak = {
        Type = "WeedVerpak", -- Don't Change
        Text = "Pulsa ~r~[E]~w~ para empaquetar la marihuana",
        ProgressBarText = 'Empaquetando la marihuana',
        ServerEventTrigger = "jz-drugs:VerpakWiet", -- Don't Change
        CommandRun = "qazxcderfcvfes", -- Don't Change
        Zones = {
            PlaceOne = {x = -1111.523, y = 4936.895, z = 218.387}, -- PROCESAMIENTO MARIHUANA 3001
        } 
    },
    CokePluk = {
        Type = "CokePluk", -- Don't Change
        Text = "Pulsa ~r~[E]~w~ para recoger la coca",
        ProgressBarText = 'Recogiendo la coca',
        ServerEventTrigger = "jz-drugs:GeefCoke", -- Don't Change
        CommandRun = "qazxcderfcvfes", -- Don't Change
        Zones = {
            PlaceOne = {x = 972.833, y = -1840.653, z = 26.643}, -- pUNTOS COCAINA
            PlaceTwo = {x = 972.439, y = -1839.794, z = 26.643}, 
            PlaceThree = {x = 972.656, y = -1837.803, z = 26.643}, 
        } 
    },
    CokeVerpak = {
        Type = "CokeVerpak", -- Don't Change
        Text = "Pulsa ~r~[E]~w~ para empaquetar la coca",
        ProgressBarText = 'Empaquetando la coca',
        ServerEventTrigger = "jz-drugs:VerpakCoke", -- Don't Change
        CommandRun = "qazxcderfcvfes", -- Don't Change
        Zones = {
            PlaceOne = {x = -1146.601, y = 4940.376, z = 222.269}, --PROCESAMIENTO COCAINA 3001 
        }
    },
    MethPluk = {
        Type = "MethPluk", -- Don't Change
        Text = "Pulsa ~r~[E]~w~ para recoger metanfetamina",
        ProgressBarText = 'Recogiendo metanfetamina',
        ServerEventTrigger = "jz-drugs:GeefMeth", -- Don't Change
        CommandRun = "qazxcderfcvfes1", -- Don't Change
        Zones = {  
            PlaceOne = {x = 3582.021, y = 3684.172, z = 41.001},  -- HUMANE LABS ZONA ROJA 963 3582.021, 3684.172, 41.001
            PlaceTwo = {x = 3570.46, y = 3686.008, z = 41.002},   
            ---PlaceThree = {x =440.65768432617, y = 6462.513671875, z = 35.864974975586},
        }
    },
    MethVerpak = {
        Type = "MethVerpak", -- Don't Change
        Text = "Pulsa ~r~[E]~w~ para empaquetar metanfetamina",
        ProgressBarText = 'Empaquetando metanfetamina',
        ServerEventTrigger = "jz-drugs:VerpakMeth", -- Don't Change
        CommandRun = "qazxcderfcvfes", -- Don't Change
        Zones = { 
            PlaceOne = {x = -1144.498, y = 4908.816, z = 220.969},  -- PROCESAMIENTO META 3001
        }
    },
} 