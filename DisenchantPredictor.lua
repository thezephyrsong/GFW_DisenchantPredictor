------------------------------------------------------
-- DisenchantPredictor.lua  (retail/Mainline API - WoW: Forever)
-- Adds disenchant predictions to item tooltips and
-- "disenchants from" info to enchanting reagent tooltips.
------------------------------------------------------

local ADDON_NAME = ...
local DEFAULTS = { Reagents = true, Items = true }

-- Reagent key -> item ID. Display names come from the client when cached,
-- otherwise from the same-named global defined in localization.lua.
local IDS = {
    DUST_STRANGE = 10940, DUST_SOUL = 11083, DUST_VISION = 11137, DUST_DREAM = 11176,
    DUST_ILLUSION = 16204,

    ESSENCE_MAGIC_LESSER = 10938, ESSENCE_MAGIC_GREATER = 10939,
    ESSENCE_ASTRAL_LESSER = 10998, ESSENCE_ASTRAL_GREATER = 11082,
    ESSENCE_MYSTIC_LESSER = 11134, ESSENCE_MYSTIC_GREATER = 11135,
    ESSENCE_NETHER_LESSER = 11174, ESSENCE_NETHER_GREATER = 11175,
    ESSENCE_ETERNAL_LESSER = 16202, ESSENCE_ETERNAL_GREATER = 16203,

    SHARD_GLIMMER_SMALL = 10978, SHARD_GLIMMER_LARGE = 11084,
    SHARD_GLOWING_SMALL = 11138, SHARD_GLOWING_LARGE = 11139,
    SHARD_RADIANT_SMALL = 11177, SHARD_RADIANT_LARGE = 11178,
    SHARD_BRILLIANT_SMALL = 14343, SHARD_BRILLIANT_LARGE = 14344,

    CRYSTAL_NEXUS = 20725,
}

-- Uncommon (green) gear by item level: { minIlvl, dust, essence, shard }
local UNCOMMON = {
    {   5, "DUST_STRANGE",  "ESSENCE_MAGIC_LESSER",    nil },
    {  16, "DUST_STRANGE",  "ESSENCE_MAGIC_GREATER",   "SHARD_GLIMMER_SMALL" },
    {  21, "DUST_STRANGE",  "ESSENCE_ASTRAL_LESSER",   "SHARD_GLIMMER_SMALL" },
    {  26, "DUST_SOUL",     "ESSENCE_ASTRAL_GREATER",  "SHARD_GLIMMER_LARGE" },
    {  31, "DUST_SOUL",     "ESSENCE_MYSTIC_LESSER",   "SHARD_GLOWING_SMALL" },
    {  36, "DUST_VISION",   "ESSENCE_MYSTIC_GREATER",  "SHARD_GLOWING_LARGE" },
    {  41, "DUST_VISION",   "ESSENCE_NETHER_LESSER",   "SHARD_RADIANT_SMALL" },
    {  46, "DUST_DREAM",    "ESSENCE_NETHER_GREATER",  "SHARD_RADIANT_LARGE" },
    {  51, "DUST_DREAM",    "ESSENCE_ETERNAL_LESSER",  "SHARD_BRILLIANT_SMALL" },
    {  56, "DUST_ILLUSION", "ESSENCE_ETERNAL_GREATER", "SHARD_BRILLIANT_LARGE" },
}

-- Rare (blue) gear by item level: { minIlvl, shard }
local RARE = {
    {   5, "SHARD_GLIMMER_SMALL" },
    {  26, "SHARD_GLIMMER_LARGE" },
    {  31, "SHARD_GLOWING_SMALL" },
    {  36, "SHARD_GLOWING_LARGE" },
    {  41, "SHARD_RADIANT_SMALL" },
    {  46, "SHARD_RADIANT_LARGE" },
    {  51, "SHARD_BRILLIANT_SMALL" },
    {  56, "SHARD_BRILLIANT_LARGE" },
}

-- Epic gear: below ilvl 56 it gives shards like rares; above gives crystals
local EPIC_CRYSTALS = {
    {  56, "CRYSTAL_NEXUS" },
}

local CLASS_WEAPON, CLASS_ARMOR = 2, 4
local NEVER_DE = { INVTYPE_BODY = true, INVTYPE_TABARD = true, INVTYPE_BAG = true, INVTYPE_NON_EQUIP_IGNORE = true }
local WEAPON_SLOTS = {
    INVTYPE_WEAPON = true, INVTYPE_2HWEAPON = true, INVTYPE_WEAPONMAINHAND = true,
    INVTYPE_WEAPONOFFHAND = true, INVTYPE_RANGED = true, INVTYPE_RANGEDRIGHT = true,
    INVTYPE_THROWN = true,
}

------------------------------------------------------
-- Helpers
------------------------------------------------------
local function GetInfo(item)
    if C_Item and C_Item.GetItemInfo then return C_Item.GetItemInfo(item) end
    return GetItemInfo(item)
end

local function RowFor(list, ilvl)
    local row = list[1]
    for i = 1, #list do
        if ilvl >= list[i][1] then row = list[i] else break end
    end
    return row
end

local function ReagentText(key)
    local id = IDS[key]
    local name, _, quality = GetInfo(id)
    if not name then
        if C_Item and C_Item.RequestLoadItemDataByID then C_Item.RequestLoadItemDataByID(id) end
        name = _G[key] or key
    end
    local c = quality and ITEM_QUALITY_COLORS and ITEM_QUALITY_COLORS[quality]
    if c and c.hex then return c.hex .. name .. "|r" end
    if c then return string.format("|cff%02x%02x%02x%s|r", c.r * 255, c.g * 255, c.b * 255, name) end
    return name
end

-- Reverse lookup for reagent tooltips: item ID -> ilvl range it comes from
local reagentInfo = {}
local MAXI = 999
local function AddRange(key, lo, hi)
    local id = IDS[key]
    local info = reagentInfo[id]
    if not info then
        reagentInfo[id] = { lo = lo, hi = hi }
    else
        if lo < info.lo then info.lo = lo end
        if hi > info.hi then info.hi = hi end
    end
end

do
    for i, row in ipairs(UNCOMMON) do
        local nextRow = UNCOMMON[i + 1]
        local hi = nextRow and (nextRow[1] - 1) or MAXI
        AddRange(row[2], row[1], hi)
        AddRange(row[3], row[1], hi)
        if row[4] then AddRange(row[4], row[1], hi) end
    end
    for i, row in ipairs(RARE) do
        local nextRow = RARE[i + 1]
        AddRange(row[2], row[1], nextRow and (nextRow[1] - 1) or MAXI)
    end
    for i, row in ipairs(EPIC_CRYSTALS) do
        local nextRow = EPIC_CRYSTALS[i + 1]
        AddRange(row[2], row[1], nextRow and (nextRow[1] - 1) or MAXI)
    end
end

------------------------------------------------------
-- Tooltip logic
------------------------------------------------------
local function AddItemPrediction(tt, link)
    local _, _, quality, _, _, _, _, _, equipLoc, _, _, classID = GetInfo(link)
    if not quality or quality < 2 or quality > 4 then return end
    if classID ~= CLASS_WEAPON and classID ~= CLASS_ARMOR then return end
    if not equipLoc or equipLoc == "" or NEVER_DE[equipLoc] then return end

    local ilvl
    if C_Item and C_Item.GetDetailedItemLevelInfo then
        ilvl = C_Item.GetDetailedItemLevelInfo(link)
    end
    if not ilvl then ilvl = select(4, GetInfo(link)) end
    if not ilvl or ilvl < 5 then return end

    tt:AddLine("Disenchants:", 0.25, 1.0, 1.0)
    if quality == 4 and ilvl >= 56 then
        tt:AddLine("  " .. ReagentText(RowFor(EPIC_CRYSTALS, ilvl)[2]), 1, 1, 1)
    elseif quality >= 3 then
        tt:AddLine("  " .. ReagentText(RowFor(RARE, ilvl)[2]), 1, 1, 1)
    else
        local row = RowFor(UNCOMMON, ilvl)
        local isWeapon = WEAPON_SLOTS[equipLoc]
        tt:AddLine("  " .. ReagentText(row[2]) .. (isWeapon and " (less likely)" or " (most likely)"), 1, 1, 1)
        tt:AddLine("  " .. ReagentText(row[3]) .. (isWeapon and " (most likely)" or " (less likely)"), 1, 1, 1)
        if row[4] then
            tt:AddLine("  " .. ReagentText(row[4]) .. " (rarely)", 1, 1, 1)
        end
    end
    tt:Show()
end

local function AddReagentInfo(tt, info)
    local range
    if info.hi >= MAXI then range = info.lo .. "+"
    elseif info.lo == info.hi then range = tostring(info.lo)
    else range = info.lo .. "-" .. info.hi end
    tt:AddLine("Disenchants from item level " .. range, 0.25, 1.0, 1.0)
    tt:Show()
end

local function IsSecret(v)
    return issecretvalue and issecretvalue(v)
end

local isProcessing = false
local function OnTooltipItem(tt, data)
    if isProcessing or not FDP_Config then return end
    if tt ~= GameTooltip and tt ~= ItemRefTooltip
       and tt ~= ShoppingTooltip1 and tt ~= ShoppingTooltip2 then return end
    if tt.IsForbidden and tt:IsForbidden() then return end

    local link = data and data.hyperlink
    local id = data and data.id
    if IsSecret(link) or IsSecret(id) then return end
    if not link and id then link = select(2, GetInfo(id)) end
    if not link then return end

    isProcessing = true
    local ok, err = pcall(function()
        local itemID = tonumber(string.match(link, "item:(%d+)"))
        if not itemID then return end
        local info = reagentInfo[itemID]
        if info then
            if FDP_Config.Reagents then AddReagentInfo(tt, info) end
        elseif FDP_Config.Items then
            AddItemPrediction(tt, link)
        end
    end)
    isProcessing = false
    if not ok and FDP_Config.Debug then
        print("|cffff4040Disenchant Predictor error:|r " .. tostring(err))
    end
end

if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall then
    TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnTooltipItem)
end

------------------------------------------------------
-- Saved variables + slash command
------------------------------------------------------
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, name)
    if name ~= ADDON_NAME then return end
    FDP_Config = FDP_Config or {}
    for k, v in pairs(DEFAULTS) do
        if FDP_Config[k] == nil then FDP_Config[k] = v end
    end
    self:UnregisterEvent("ADDON_LOADED")
end)

local function Say(msg)
    print("|cff40ffffDisenchant Predictor:|r " .. msg)
end

SLASH_FDP1 = "/fdp"
SLASH_FDP2 = "/dp"
SlashCmdList["FDP"] = function(msg)
    msg = string.lower(msg or "")
    if msg == "items" then
        FDP_Config.Items = not FDP_Config.Items
        Say("Item predictions " .. (FDP_Config.Items and "on" or "off"))
    elseif msg == "reagents" then
        FDP_Config.Reagents = not FDP_Config.Reagents
        Say("Reagent info " .. (FDP_Config.Reagents and "on" or "off"))
    elseif msg == "debug" then
        FDP_Config.Debug = not FDP_Config.Debug
        Say("Debug " .. (FDP_Config.Debug and "on" or "off"))
    else
        Say("/fdp items - toggle predictions on gear (" .. (FDP_Config.Items and "on" or "off") .. ")")
        Say("/fdp reagents - toggle info on dusts/essences/shards (" .. (FDP_Config.Reagents and "on" or "off") .. ")")
    end
end
