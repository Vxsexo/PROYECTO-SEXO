/*
    zdiscord - by Tony/zfbx - https://github.com/zfbx/zdiscord - License: CC BY-NC-SA 4.0
    Docs for this file available at https://zfbx.github.io/zdiscord/config or in docs/config.md
*/


/** ******************************
 * GENERAL CONFIGURATION SETTINGS
 ********************************/

const LanguageLocaleCode = "es";

// PUBLIC VALUES
const FiveMServerName = "RetornoRP";
const DiscordInviteLink = "https://discord.gg/retornorp";
const FiveMServerIP = "127.0.0.1";

// This spams the console, only enable for testing if needed
const DebugLogs = false;


/** ********************
 * DISCORD BOT SETTINGS
 ***********************/

const EnableDiscordBot = true;

// DISCORD BOT
const DiscordBotToken = "MTIwODEwNDE5NjAwNDM4MDY3Mg.GGb3N-.YikOc1b_SV0_SsWKNI8QWkBYo-JuUt6LDkXCyA";
const DiscordGuildId = "1082471822701891604";

// STAFF CHAT
const EnableStaffChatForwarding = false;
const DiscordStaffChannelId = "1132357942092513330";
const AdditionalStaffChatRoleIds = [
    // "000000000000000",
];

// WHITELISTING / ALLOWLISTING
const EnableWhitelistChecking = false;
const DiscordWhitelistRoleIds = "1083551062516060220, 1082471822701891606";

// SLASH COMMANDS / DISCORD PERMISSIONS
const EnableDiscordSlashCommands = true;
const DiscordModRoleId = "1082471822743830562";
const DiscordAdminRoleId = "1082471822743830563";
const DiscordGodRoleId = "1082471822743830566";

// DISCORD BOT STATUS
const EnableBotStatusMessages = true;
const BotStatusMessages = [
    "{servername}",
    "{playercount} online",
];

// ACE PERMISSIONS
const EnableAutoAcePermissions = false;
const AutoAcePermissions = {
    // "example": "000000000000000000",
    // "example2": [ "000000000000000000", "000000000000000000"],
};

// Other
const SaveScreenshotsToServer = false;


/** ************************
 * WEBHOOK LOGGING SETTINGS
**************************/

const EnableLoggingWebhooks = false;
const LoggingWebhookName = "zLogs";
// put "&" in front of the id if you're to ping a role
const LoggingAlertPingId = "&000000000000000000";
// example: "bank": "https://discord.com/webhook/...",
const LoggingWebhooks = {
    "example": "https://discord.com/api/webhooks/1208107052300509205/5ChdSzTrGFePOvkNVwlR79L8upq8KU-NAlpMkdQGed4yytRQdshcZQ4xp4STCw2-J-Cz",
};


/** !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 * !! DO NOT EDIT BELOW THIS LINE UNLESS YOU KNOW WHAT YOU'RE DOING !!
 * !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/

module.exports = {
    EnableDiscordBot: getConBool("discord_enable_bot", EnableDiscordBot),
    EnableStaffChatForwarding: getConBool("discord_enable_staff_chat", EnableStaffChatForwarding),
    EnableLoggingWebhooks: getConBool("discord_enable_logging_webhooks", EnableLoggingWebhooks),
    DebugLogs: getConBool("discord_debug", DebugLogs),
    DiscordBotToken: GetConvar("discord_token", DiscordBotToken),
    DiscordGuildId: GetConvar("discord_guild_id", DiscordGuildId),
    LanguageLocaleCode: GetConvar("discord_lang", LanguageLocaleCode),
    FiveMServerName: GetConvar("discord_server_name", FiveMServerName),
    DiscordInviteLink: GetConvar("discord_invite", DiscordInviteLink),
    FiveMServerIP: GetConvar("discord_server_ip", FiveMServerIP),
    EnableWhitelistChecking: getConBool("discord_enable_whitelist", EnableWhitelistChecking),
    DiscordWhitelistRoleIds: getConList("discord_whitelist_roles", DiscordWhitelistRoleIds),
    EnableDiscordSlashCommands: getConBool("discord_enable_commands", EnableDiscordSlashCommands),
    DiscordModRoleId: GetConvar("discord_mod_role", DiscordModRoleId),
    DiscordAdminRoleId: GetConvar("discord_admin_role", DiscordAdminRoleId),
    DiscordGodRoleId: GetConvar("discord_god_role", DiscordGodRoleId),
    EnableBotStatusMessages: getConBool("discord_enable_status", EnableBotStatusMessages),
    BotStatusMessages: BotStatusMessages,
    EnableAutoAcePermissions: getConBool("discord_enable_ace_perms", EnableAutoAcePermissions),
    AutoAcePermissions: AutoAcePermissions,
    SaveScreenshotsToServer: getConBool("discord_save_screenshots", SaveScreenshotsToServer),
    DiscordStaffChannelId: GetConvar("discord_staff_channel_id", DiscordStaffChannelId),
    LoggingWebhooks: LoggingWebhooks,
    LoggingAlertPingId: GetConvar("discord_logging_ping_id", LoggingAlertPingId),
    LoggingWebhookName: GetConvar("discord_logging_name", LoggingWebhookName),
    StaffChatRoleIds: [
        GetConvar("discord_mod_role", DiscordModRoleId),
        GetConvar("discord_admin_role", DiscordAdminRoleId),
        GetConvar("discord_god_role", DiscordGodRoleId),
        ...AdditionalStaffChatRoleIds,
    ],
};

/** Returns convar or default value fixed to a true/false boolean
 * @param {boolean|string|number} con - Convar name
 * @param {boolean|string|number} def - Default fallback value
 * @returns {boolean} - parsed bool */
function getConBool(con, def) {
    if (typeof def == "boolean") def = def.toString();
    const ret = GetConvar(con, def);
    if (typeof ret == "boolean") return ret;
    if (typeof ret == "string") return ["true", "on", "yes", "y", "1"].includes(ret.toLocaleLowerCase().trim());
    if (typeof ret == "number") return ret > 0;
    return false;
}

/** returns array of items or default array provided
 * @param {string} con - string of comma separated values
 * @param {string|Array} def - string of comma separated values
 * @returns {object} - array of discord ids */
function getConList(con, def) {
    const ret = GetConvar(con, def);
    if (typeof ret == "string") return ret.replace(/[^0-9,]/g, "").replace(/(,$)/g, "").split(",");
    if (Array.isArray(ret)) return ret;
    if (!ret) return [];
}
