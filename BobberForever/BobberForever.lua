-- Bobber Forever

local ADDON, ns = ...

local PREFIX = "|cff66ccffBobber Forever|r: "

local DEFAULTS = {
    point    = "CENTER",
    relPoint = "CENTER",
    x        = 0,
    y        = -150,
    locked   = false,
}

-- sonido mientras pescas
local FISHING = {
    Sound_EnableSFX                  = "1",
    Sound_MasterVolume               = "1",
    Sound_SFXVolume                  = "1",
    Sound_MusicVolume                = "0",
    Sound_AmbienceVolume             = "0",
    Sound_EnableSoundWhenGameIsInBG  = "1",
}

local db
local button, icon, slash, stateText

local L = setmetatable({}, { __index = function(_, key) return key end })

for key, value in pairs(ns.L[(GetLocale and GetLocale()) or "enUS"] or {}) do
    L[key] = value
end

local function Say(text)
    DEFAULT_CHAT_FRAME:AddMessage(PREFIX .. L[text])
end

local function IsOn()
    return db.saved ~= nil
end

local function Refresh()
    if not button then return end
    icon:SetDesaturated(not IsOn())
    slash:SetShown(not IsOn())
    if IsOn() then
        stateText:SetText("|cff55ff55" .. L["Fishing sound ON"] .. "|r")
    else
        stateText:SetText("|cff999999" .. L["Fishing sound OFF"] .. "|r")
    end
end

local function TurnOn()
    if IsOn() then return end

    -- se lee justo antes de tocar nada
    local saved = {}
    for cvar in pairs(FISHING) do
        saved[cvar] = GetCVar(cvar)
    end
    db.saved = saved

    for cvar, value in pairs(FISHING) do
        SetCVar(cvar, value)
    end
    Refresh()
end

local function TurnOff()
    if not IsOn() then return end
    for cvar, value in pairs(db.saved) do
        SetCVar(cvar, value)
    end
    db.saved = nil
    Refresh()
end

local function Toggle()
    if IsOn() then TurnOff() else TurnOn() end
end

local function Place()
    button:ClearAllPoints()
    button:SetPoint(db.point, UIParent, db.relPoint, db.x, db.y)
end

local function Build()
    button = CreateFrame("Button", "BobberForeverButton", UIParent)
    button:SetSize(44, 44)
    button:RegisterForClicks("LeftButtonUp")
    button:SetClampedToScreen(true)
    button:SetMovable(true)

    button:RegisterForDrag("RightButton")
    button:SetScript("OnDragStart", function(self)
        if not db.locked then self:StartMoving() end
    end)
    button:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local point, _, relPoint, x, y = self:GetPoint()
        db.point, db.relPoint, db.x, db.y = point, relPoint, x, y
    end)

    icon = button:CreateTexture(nil, "ARTWORK")
    icon:SetAllPoints()
    icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
    icon:SetTexture("Interface\\Icons\\Trade_Fishing")

    -- apagado: cana tachada
    slash = button:CreateLine(nil, "OVERLAY")
    slash:SetColorTexture(1, 0.15, 0.15, 0.9)
    slash:SetThickness(4)
    slash:SetStartPoint("TOPRIGHT", -3, -3)
    slash:SetEndPoint("BOTTOMLEFT", 3, 3)

    button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

    stateText = button:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    stateText:SetPoint("TOP", button, "BOTTOM", 0, -4)

    button:SetScript("OnClick", Toggle)
    button:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:AddLine("Bobber Forever")
        GameTooltip:AddLine(L["Left click: fishing sound on or off."], 1, 1, 1)
        GameTooltip:AddLine(L["Right click and drag: move the button."], 1, 1, 1)
        GameTooltip:AddLine(L["/bobber for the commands."], 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    button:SetScript("OnLeave", function() GameTooltip:Hide() end)
    ns.style.IconFrame(button)

    Place()
    Refresh()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGOUT")
frame:SetScript("OnEvent", function(self, event, name)
    if event == "PLAYER_LOGOUT" then
        TurnOff()
        return
    end
    if name ~= ADDON then return end
    self:UnregisterEvent("ADDON_LOADED")

    BobberForeverDB = BobberForeverDB or {}
    db = BobberForeverDB
    for key, value in pairs(DEFAULTS) do
        if db[key] == nil then db[key] = value end
    end

    -- si el juego se cerro con el sonido puesto, se devuelve el tuyo
    if db.saved then TurnOff() end

    Build()
end)

SLASH_BOBBERFOREVER1 = "/bobber"
SlashCmdList.BOBBERFOREVER = function(msg)
    local cmd = strlower(strtrim(msg or ""))
    if cmd == "lock" then
        db.locked = not db.locked
        Say(db.locked and "button locked." or "button unlocked: drag it with the right button.")
    elseif cmd == "reset" then
        db.point, db.relPoint = DEFAULTS.point, DEFAULTS.relPoint
        db.x, db.y = DEFAULTS.x, DEFAULTS.y
        Place()
        Say("button back in place.")
    elseif cmd == "show" then
        button:Show()
    elseif cmd == "hide" then
        button:Hide()
        Say("button hidden. |cffffd100/bobber show|r brings it back.")
    elseif cmd == "toggle" then
        Toggle()
    else
        Say("commands:")
        Say("  |cffffd100/bobber toggle|r - fishing sound on or off")
        Say("  |cffffd100/bobber lock|r / |cffffd100reset|r - lock the button or put it back in place")
        Say("  |cffffd100/bobber show|r / |cffffd100hide|r - show or hide the button")
    end
end
