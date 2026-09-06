Roda = {}

-- Identifer can be steam, discord, license -- Examples:
-- If you put license you need to put something like this: license:2139ddcb678c0a79eecc7515370ce71c3372f029
-- If you put steam you need to put something like this: steam:100023032030203
-- If you put discord you need to put something like this:  discord:755358930833768488

Roda.IdentifierThatYouUseInYourServer = 'license' 

Roda.AuthorizedsAdmins = {  -- You can add more admins that can use the commands to give peds.
    'license:e16ad87aa6b3a4609463e0b0e0996fcde2b06287', 
}

Roda.Db = 'mysql' -- can be oxmysql [1.9], ghmattisql, mysql [If you use last oxmysql, put mysql here.]

Roda.Framework = 'esx' -- Just esx or qbcore.

Roda.Commands = {
    giveped = 'givepeds',
    delped = 'delpeds',
    peds = 'peds',
    managepeds = 'managepeds'
}


Roda.Language = {
    noperms = 'You don\'t have perms :(',
    nopeds = 'You don\'t have peds.',
    nouser = ' The player is not online.',
    nopedspipi = ' no have any peds :(',
    theuser = 'The user ',
    checkShared = 'Check the Shared.lua [Line] 17  (Roda.Framework)'
}
