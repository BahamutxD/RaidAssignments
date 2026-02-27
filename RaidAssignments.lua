BINDING_HEADER_RAIDASSIGNMENTS = "Raid Assignments"
BINDING_NAME_RAIDASSIGNMENTS_TARGET_MARK = "Target Your Mark"

RaidAssignments = CreateFrame("Button", "RaidAssignments", UIParent)
RaidAssignments.ToolTip = CreateFrame("Button", "ToolTip", UIParent)
RaidAssignments.HealToolTip = CreateFrame("Button", "HealToolTip", UIParent)
RaidAssignments.GeneralToolTip = CreateFrame("Button", "GeneralToolTip", UIParent)
RaidAssignments.GeneralAssignments = CreateFrame("Button", "GeneralAssignments", UIParent)

RaidAssignments_Settings = RaidAssignments_Settings or {}

RaidAssignments.RoleFilter = {
    TankPrimary = { Warrior = true, Druid = true, Paladin = true, Shaman = true },
    Healer = { Priest = true, Druid = true, Shaman = true, Paladin = true }
}

RaidAssignments.CustomMarks = RaidAssignments.CustomMarks or {}
RaidAssignments_Settings["useWhisper"] = RaidAssignments_Settings["useWhisper"] or false

RaidAssignments.Settings = {
	["MainFrame"] = false,
	["Animation"] = false,
	["MainFrameX"] = 1050,
	["MainFrameY"] = 650,
	["SizeX"] = 0,
	["SizeY"] = 0,
	["active"] = "",
	["active_heal"] = "",
	["active_general"] = "",
	["GeneralFrame"] = false,
	["GeneralAnimation"] = false,
	["GeneralFrameX"] = 700,
	["GeneralFrameY"] = 560,
	["GeneralSizeX"] = 0,
	["GeneralSizeY"] = 0,
}

RaidAssignments.Marks = {
    [1] = {},
    [2] = {},
    [3] = {},
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {},
    [12] = {},
}


RaidAssignments.RealMarks = {
	[1] = "Star",
	[2] = "Circle",
	[3] = "Diamond",
	[4] = "Triangle",
	[5] = "Moon",
	[6] = "Square",
	[7] = "Cross",
	[8] = "Skull",
}

RaidAssignments.WarlockMarks = {
    [9] = { icon = "Interface\\AddOns\\RaidAssignments\\assets\\Spell_Shadow_CurseOfTounges.tga", name = "Curse of Tongues" },
    [10] = { icon = "Interface\\AddOns\\RaidAssignments\\assets\\Spell_Shadow_UnholyStrength.tga", name = "Curse of Recklessness" },
    [11] = { icon = "Interface\\AddOns\\RaidAssignments\\assets\\Spell_Shadow_CurseOfAchimonde.tga", name = "Curse of Shadow" },
    [12] = { icon = "Interface\\AddOns\\RaidAssignments\\assets\\Spell_Shadow_ChillTouch.tga", name = "Curse of the Elements" },
}

RaidAssignments.HealMarks = {
	[1] = {nil, nil, nil, nil, nil, nil},
	[2] = {nil, nil, nil, nil, nil, nil},
	[3] = {nil, nil, nil, nil, nil, nil},
	[4] = {nil, nil, nil, nil, nil, nil},
	[5] = {nil, nil, nil, nil, nil, nil},
	[6] = {nil, nil, nil, nil, nil, nil},
	[7] = {nil, nil, nil, nil, nil, nil},
	[8] = {nil, nil, nil, nil, nil, nil},
	[9] = {nil, nil, nil, nil, nil, nil},
	[10] = {nil, nil, nil, nil, nil, nil},
	[11] = {nil, nil, nil, nil, nil, nil},
	[12] = {nil, nil, nil, nil, nil, nil},
}

RaidAssignments.HealRealMarks = {
	[1] = "D",
	[2] = "C",
	[3] = "B",
	[4] = "A",
	[5] = "4",
	[6] = "3",
	[7] = "2",
	[8] = "1",
	[9] = "South",
	[10] = "North",
	[11] = "Right",
	[12] = "Left",
}

RaidAssignments.GeneralMarks = {
[1] = {}, [2] = {}, [3] = {}, [4] = {},
[5] = {}, [6] = {}, [7] = {}, [8] = {},
[9] = {nil, nil, nil, nil, nil, nil, nil},
[10] = {nil, nil, nil, nil, nil, nil, nil},
}


RaidAssignments.GeneralRealMarks = {
[1] = "1: North",
[2] = "2: North East",
[3] = "3: East",
[4] = "4: South East",
[5] = "5: South",
[6] = "6: South West",
[7] = "7: West",
[8] = "8: North West",
[9] = "",
[10] = "",
}

RaidAssignments.Frames = {
    ["ToolTip"] = {},
    ["HealToolTip"] = {},
    ["GeneralToolTip"] = {},
    [1] = {},
    [2] = {},
    [3] = {},
    [4] = {},
    [5] = {},
    [6] = {},
    [7] = {},
    [8] = {},
    [9] = {},
    [10] = {},
    [11] = {},
    [12] = {},
}


RaidAssignments.HealFrames = {
	[1] = {},
	[2] = {},
	[3] = {},
	[4] = {},
	[5] = {},
	[6] = {},
	[7] = {},
	[8] = {},
	[9] = {},
	[10] = {},
	[11] = {},
	[12] = {},
}

RaidAssignments.GeneralFrames = {
	[1] = {},
	[2] = {},
	[3] = {},
	[4] = {},
	[5] = {},
	[6] = {},
	[7] = {},
	[8] = {},
	[9] = {},
   [10] = {},
}

RaidAssignments.Classes = {
	[1] = "Warrior",
	[2] = "Warlock",
	[3] = "Rogue",
	[4] = "Priest",
	[5] = "Mage",
	[6] = "Hunter",
	[7] = "Druid",
	[8] = "Paladin",
	[9] = "Shaman",
}

RaidAssignments.ChanTable = {
	["s"] = "SAY",
	["y"] = "YELL",
	["e"] = "EMOTE",
	["g"] = "GUILD",
	["p"] = "PARTY",
	["r"] = "RAID",
	["1"] = {"CHANNEL", "1"},
	["2"] = {"CHANNEL", "2"},
	["3"] = {"CHANNEL", "3"},
	["4"] = {"CHANNEL", "4"},
	["5"] = {"CHANNEL", "5"},
	["6"] = {"CHANNEL", "6"},
	["7"] = {"CHANNEL", "7"},
	["8"] = {"CHANNEL", "8"},
	["9"] = {"CHANNEL", "9"},
}

-- Test mode variables
RaidAssignments.TestMode = false
RaidAssignments.TestRoster = {}

-- events
RaidAssignments:RegisterEvent("ADDON_LOADED")
RaidAssignments:RegisterEvent("RAID_ROSTER_UPDATE")
RaidAssignments:RegisterEvent("CHAT_MSG_WHISPER")
RaidAssignments:RegisterEvent("UNIT_PORTRAIT_UPDATE")
RaidAssignments:RegisterEvent("CHAT_MSG_ADDON")
RaidAssignments:RegisterEvent("UPDATE_MOUSEOVER_UNIT")

function RaidAssignments:OnEvent()
    if event == "ADDON_LOADED" and arg1 == "RaidAssignments" then

        -- Initialize settings
        RaidAssignments_Settings = RaidAssignments_Settings or {}
        RaidAssignments_Settings["usecolors"] = RaidAssignments_Settings["usecolors"] or true
        if RaidAssignments_Settings["showYourMarkFrame"] == nil then
            RaidAssignments_Settings["showYourMarkFrame"] = true
        end

        -- Initialize CustomRealMarks for all custom windows (1-8)
        RaidAssignments.CustomRealMarks = RaidAssignments.CustomRealMarks or {}
        for i = 1, 8 do
            RaidAssignments.CustomRealMarks[i] = RaidAssignments.CustomRealMarks[i] or {}
            RaidAssignments.CustomRealMarks[i][9] = RaidAssignments.CustomRealMarks[i][9] or "Custom 1"
            RaidAssignments.CustomRealMarks[i][10] = RaidAssignments.CustomRealMarks[i][10] or "Custom 2"
        end

        -- Initialize Custom Assignments system COMPLETELY
        RaidAssignments.CustomMarks = RaidAssignments.CustomMarks or {}
        RaidAssignments.CustomRealMarks = RaidAssignments.CustomRealMarks or {}
        RaidAssignments.CustomFrames = RaidAssignments.CustomFrames or {}
        RaidAssignments_Settings.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles or {}

        for i = 1, 8 do
            -- Initialize CustomMarks with all marks and slots
            RaidAssignments.CustomMarks[i] = RaidAssignments.CustomMarks[i] or {}
            for m = 1, 10 do
                RaidAssignments.CustomMarks[i][m] = RaidAssignments.CustomMarks[i][m] or {}
                -- Initialize all slots for each mark
                local maxSlots = (m >= 9 and m <= 10) and 6 or 5
                for s = 1, maxSlots do
                    if RaidAssignments.CustomMarks[i][m][s] == nil then
                        RaidAssignments.CustomMarks[i][m][s] = nil -- Explicitly set to nil
                    end
                end
            end

            -- Initialize CustomRealMarks with proper raid icons for 1-8 and custom names for 9-10
            RaidAssignments.CustomRealMarks[i] = RaidAssignments.CustomRealMarks[i] or {}
            for m = 1, 8 do
                RaidAssignments.CustomRealMarks[i][m] = RaidAssignments.RealMarks[m] or ("Mark "..m)
            end
            RaidAssignments.CustomRealMarks[i][9] = RaidAssignments.CustomRealMarks[i][9] or "Custom 1"
            RaidAssignments.CustomRealMarks[i][10] = RaidAssignments.CustomRealMarks[i][10] or "Custom 2"

            -- Initialize CustomWindowTitles
            if not RaidAssignments_Settings.CustomWindowTitles[i] then
                RaidAssignments_Settings.CustomWindowTitles[i] = "Custom Assignments " .. tostring(i)
            end

            -- Initialize CustomFrames
            RaidAssignments.CustomFrames[i] = RaidAssignments.CustomFrames[i] or {}
        end

        -- Set the reference for custom window titles
        RaidAssignments.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles

        -- Initialize other data structures
        RaidAssignments:ConfigMainFrame()
        RaidAssignments:SetScale(RaidAssignments_Settings["UIScale"] or 1.0)
        RaidAssignments:ConfigGeneralFrame()
        RaidAssignments:ConfigAllCustomFrames()
        RaidAssignments:CreateCustomAssignmentButtons()
		RaidAssignments:CreateMinimapButton()
        RaidAssignments:CreateYourMarkFrame()
        RaidAssignments:CreateYourCurseFrame()

        -- Initialize and sync class filters
        RaidAssignments:InitializeClassFilters()
        RaidAssignments:SyncClassFilters()

        -- Hook SetItemRef to handle our custom |HRAmark:N| chat links.
        local origSetItemRef = SetItemRef
        SetItemRef = function(link, text, button)
            if string.sub(link, 1, 7) == "RAmark:" then
                local markIndex = tonumber(string.sub(link, 8))
                if markIndex then
                    TargetUnit("mark"..markIndex)
                end
                return
            end
            if origSetItemRef then origSetItemRef(link, text, button) end
        end

        RaidAssignments:UnregisterEvent("ADDON_LOADED")

    elseif event == "RAID_ROSTER_UPDATE" or event == "UNIT_PORTRAIT_UPDATE" then
        -- Update all relevant frames safely
        pcall(function()
            RaidAssignments:UpdateTanks()
            RaidAssignments:UpdateHeals()
            RaidAssignments:UpdateGeneral()
            RaidAssignments:UpdateYourMarkFrame()
            RaidAssignments:UpdateYourCurseFrame()

            -- AUTO-SYNC: Sync any open custom windows if officer
            if IsRaidOfficer("player") then
                for i = 1, 8 do
                    if RaidAssignments.CustomFrames[i] and
                       RaidAssignments.CustomFrames[i].frame and
                       RaidAssignments.CustomFrames[i].frame:IsShown() then
                        RaidAssignments:SendCustom(i)
                    end
                end
            end
        end)

        -- Detect when this player just joined a raid group.
        -- Request current marks from officers so a fresh join doesn't
        -- accidentally overwrite everyone's assignments with empty data.
        local currentCount = GetNumRaidMembers() or 0
        local previousCount = RaidAssignments._prevRaidMemberCount or 0
        if currentCount > 0 and previousCount == 0 and not IsRaidOfficer("player") then
            -- Use a short timer so the RAID channel is fully available before sending
            RaidAssignments._requestMarksTimer = 2.5
        end
        RaidAssignments._prevRaidMemberCount = currentCount

elseif event == "CHAT_MSG_ADDON" then
    if not arg1 or type(arg1) ~= "string" then
        return
    end

    local isRACMarks = string.find(arg1, "^RACMarks%d$") and true or false
    local isRACLabels = string.find(arg1, "^RACLabel%d$") and true or false
    local isRACTitle = string.find(arg1, "^RACTitle%d$") and true or false

    if not (
        arg1 == "TankAssignmentsMarks" or
        arg1 == "HealAssignmentsMarks" or
        arg1 == "RaidAssignmentsGeneralMarks" or
        arg1 == "RARequestMarks" or
        isRACMarks or
        isRACLabels or
        isRACTitle or
        string.sub(arg1, 1, 15) == "RaidAssignments"
    ) then
        return
    end

    if UnitName("player") == arg4 then
        return
    end

    pcall(function()
        if arg1 == "TankAssignmentsMarks" then
            RaidAssignments.Marks = {
                [1]={},[2]={},[3]={},[4]={},[5]={},[6]={},[7]={},[8]={},
                [9]={},[10]={},[11]={},[12]={}
            }

            local pos = 1
            local data = arg2 or ""
            while pos <= string.len(data) do
                local markEnd = string.find(data, "_", pos)
                if not markEnd then break end
                local slotEnd = string.find(data, "_", markEnd + 1)
                if not slotEnd then break end
                local nameEnd = string.find(data, ",", slotEnd + 1)
                if not nameEnd then nameEnd = string.len(data) + 1 end

                local mark = tonumber(string.sub(data, pos, markEnd - 1))
                local slot = tonumber(string.sub(data, markEnd + 1, slotEnd - 1))
                local name = string.sub(data, slotEnd + 1, nameEnd - 1)

                if mark and slot and name and name ~= "" and mark >= 1 and mark <= 12 then
                    if not RaidAssignments.Marks[mark] then
                        RaidAssignments.Marks[mark] = {}
                    end
                    RaidAssignments.Marks[mark][slot] = name
                end
                pos = nameEnd + 1
            end
            RaidAssignments:UpdateTanks()
            RaidAssignments:UpdateYourMarkFrame()
            RaidAssignments:UpdateYourCurseFrame()

        elseif arg1 == "HealAssignmentsMarks" then
            RaidAssignments.HealMarks = {}
            for i = 1, 12 do
                RaidAssignments.HealMarks[i] = {nil, nil, nil, nil, nil, nil}
            end

            local pos = 1
            local data = arg2 or ""
            while pos <= string.len(data) do
                local markEnd = string.find(data, "_", pos)
                if not markEnd then break end
                local slotEnd = string.find(data, "_", markEnd + 1)
                if not slotEnd then break end
                local nameEnd = string.find(data, ",", slotEnd + 1)
                if not nameEnd then nameEnd = string.len(data) + 1 end

                local mark = tonumber(string.sub(data, pos, markEnd - 1))
                local slot = tonumber(string.sub(data, markEnd + 1, slotEnd - 1))
                local name = string.sub(data, slotEnd + 1, nameEnd - 1)

                if mark and slot and slot <= 6 and name and name ~= "" then
                    RaidAssignments.HealMarks[mark][slot] = name
                end
                pos = nameEnd + 1
            end
            RaidAssignments:UpdateHeals()
            RaidAssignments:UpdateYourMarkFrame()
            RaidAssignments:UpdateYourCurseFrame()

        elseif arg1 == "RaidAssignmentsGeneralMarks" then
            for i = 1, 10 do
                RaidAssignments.GeneralMarks[i] = {}
            end
            local pos = 1
            while pos <= string.len(arg2 or "") do
                local markEnd = string.find(arg2, "_", pos)
                if not markEnd then break end
                local slotEnd = string.find(arg2, "_", markEnd + 1)
                if not slotEnd then break end
                local nameEnd = string.find(arg2, ",", slotEnd + 1)
                if not nameEnd then nameEnd = string.len(arg2) + 1 end
                local mark = tonumber(string.sub(arg2, pos, markEnd - 1))
                local slot = tonumber(string.sub(arg2, markEnd + 1, slotEnd - 1))
                local name = string.sub(arg2, slotEnd + 1, nameEnd - 1)
                if mark and slot and name and name ~= "" and mark >= 1 and mark <= 10 then
                    RaidAssignments.GeneralMarks[mark][slot] = name
                end
                pos = nameEnd + 1
            end
            RaidAssignments:UpdateGeneral()

        elseif isRACLabels then
            local customIndex = tonumber(string.sub(arg1, 10))
            if customIndex and customIndex >= 1 and customIndex <= 8 then
                local data = arg2 or ""
                local pos = 1
                while pos <= string.len(data) do
                    local markEnd = string.find(data, "_", pos)
                    if not markEnd then break end
                    local labelEnd = string.find(data, ",", markEnd + 1)
                    if not labelEnd then labelEnd = string.len(data) + 1 end

                    local mark = tonumber(string.sub(data, pos, markEnd - 1))
                    local label = string.sub(data, markEnd + 1, labelEnd - 1)

                    if mark and (mark == 9 or mark == 10) then
                        RaidAssignments.CustomRealMarks[customIndex][mark] = label or "Custom " .. (mark - 8)
                        local editBox = _G["C" .. customIndex .. "_" .. mark .. "_Edit"]
                        if editBox then
                            editBox:SetText(label or "Custom " .. (mark - 8))
                        end
                    end
                    pos = labelEnd + 1
                end
                RaidAssignments:UpdateCustom(customIndex)
            end

        elseif isRACTitle then
            local customIndex = tonumber(string.sub(arg1, 9))
            if customIndex and customIndex >= 1 and customIndex <= 8 then
                RaidAssignments_Settings.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles or {}
                RaidAssignments.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles
                RaidAssignments.CustomWindowTitles[customIndex] = arg2 or ("Custom Assignments " .. tostring(customIndex))
                RaidAssignments_Settings.CustomWindowTitles[customIndex] = RaidAssignments.CustomWindowTitles[customIndex]

                if RaidAssignments.CustomFrames[customIndex] and RaidAssignments.CustomFrames[customIndex].frame then
                    local frame = RaidAssignments.CustomFrames[customIndex].frame
                    if frame.title then
                        frame.title:SetText(RaidAssignments.CustomWindowTitles[customIndex])
                    end
                    if frame.titleEditBox then
                        frame.titleEditBox:SetText(RaidAssignments.CustomWindowTitles[customIndex])
                    end
                end
            end

        elseif isRACMarks then
            local customIndex = tonumber(string.sub(arg1, 9))
            if customIndex and customIndex >= 1 and customIndex <= 8 then
                for mark = 1, 10 do
                    local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
                    RaidAssignments.CustomMarks[customIndex][mark] = {}
                    for slot = 1, maxSlots do
                        RaidAssignments.CustomMarks[customIndex][mark][slot] = nil
                    end
                end

                local data = arg2 or ""
                local pos = 1

                while pos <= string.len(data) do
                    local markEnd = string.find(data, "_", pos)
                    if not markEnd then break end
                    local slotEnd = string.find(data, "_", markEnd + 1)
                    if not slotEnd then break end
                    local nameEnd = string.find(data, ",", slotEnd + 1)
                    if not nameEnd then nameEnd = string.len(data) + 1 end

                    local mark = tonumber(string.sub(data, pos, markEnd - 1))
                    local slot = tonumber(string.sub(data, markEnd + 1, slotEnd - 1))
                    local name = string.sub(data, slotEnd + 1, nameEnd - 1)

                    if mark and slot and name and name ~= "" and mark >= 1 and mark <= 10 then
                        local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
                        if slot <= maxSlots then
                            if not RaidAssignments.CustomMarks[customIndex][mark] then
                                RaidAssignments.CustomMarks[customIndex][mark] = {}
                            end
                            RaidAssignments.CustomMarks[customIndex][mark][slot] = name
                        end
                    end
                    pos = nameEnd + 1
                end
                RaidAssignments:UpdateCustom(customIndex)
            end
        elseif arg1 == "RARequestMarks" then
            -- A player just joined the raid and is requesting current marks.
            -- Only officers respond, to avoid everyone broadcasting at once.
            if IsRaidOfficer("player") then
                RaidAssignments:SendTanks()
                RaidAssignments:SendHeals()
                RaidAssignments:SendGeneral()
                for i = 1, 8 do
                    RaidAssignments:SendCustom(i)
                end
            end
        end
    end)
    elseif event == "UPDATE_MOUSEOVER_UNIT" then
        if UnitExists("mouseover") and GetRaidTargetIndex("mouseover") then
            local index = GetRaidTargetIndex("mouseover")
            if RaidAssignments.Marks[index] and table.getn(RaidAssignments.Marks[index]) > 0 then
                local names = table.concat(RaidAssignments.Marks[index], " ")
                GameTooltip:AddDoubleLine("RaidAssignments", names, 0.78, 0.61, 0.43, 1, 1, 1)
            end
        end
    end
end

function RaidAssignments:ConfigMainFrame()
    RaidAssignments.Drag = {}
    function RaidAssignments.Drag:StartMoving()
        RaidAssignments:StartMoving()
        this.drag = true
    end

    function RaidAssignments.Drag:StopMovingOrSizing()
        RaidAssignments:StopMovingOrSizing()
        this.drag = false
    end

    local backdrop = {
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = false,
        tileSize = 16,
        edgeSize = 16,  -- THICK WHITE BORDER
        insets = {
            left = 5,
            right = 5,
            top = 5,
            bottom = 5
        }
    }

    self:SetFrameStrata("DIALOG")
    self:SetWidth(RaidAssignments.Settings["MainFrameX"])
    self:SetHeight(RaidAssignments.Settings["MainFrameY"])
    self:SetPoint("CENTER",0,100)
    self:SetMovable(true)
    self:EnableMouse(true)
    self:RegisterForDrag("LeftButton")
    self:SetBackdrop(backdrop)
    self:SetBackdropColor(0,0,0,1)
    self:SetBackdropBorderColor(1,1,1,1)  -- FULL WHITE BORDER

    -- REMOVED ANIMATION: Simplified OnUpdate script
    self:SetScript("OnUpdate", function()
        -- Deferred request: ask officers for marks shortly after joining a raid.
        if RaidAssignments._requestMarksTimer then
            RaidAssignments._requestMarksTimer = RaidAssignments._requestMarksTimer - arg1
            if RaidAssignments._requestMarksTimer <= 0 then
                RaidAssignments._requestMarksTimer = nil
                if GetNumRaidMembers() > 0 then
                    SendAddonMessage("RARequestMarks", "", "RAID")
                end
            end
        end

        if RaidAssignments:IsVisible() then
            if not RaidAssignments.Settings["MainFrame"] then
                RaidAssignments.Settings["MainFrame"] = true
                RaidAssignments:SetWidth(RaidAssignments.Settings["MainFrameX"])
                RaidAssignments:SetHeight(RaidAssignments.Settings["MainFrameY"])
                RaidAssignments.bg:Show()
                RaidAssignments:UpdateTanks()
                RaidAssignments:UpdateHeals()
            elseif RaidAssignments.Settings["Animation"] then
                RaidAssignments.Settings["MainFrame"] = false
                RaidAssignments.Settings["Animation"] = false
                RaidAssignments.bg:Hide()
                RaidAssignments:Hide()
            end
        end
    end)

    self.bg = CreateFrame("Button", "bg", RaidAssignments)
    self.bg:SetWidth(self:GetWidth())
    self.bg:SetHeight(self:GetHeight())
    self.bg:SetPoint("TOPLEFT",0,0)
    self.bg:SetBackdropColor(0,0,0,1)
    self.bg:EnableMouse(true)
    self.bg:SetMovable(true)
    self.bg:RegisterForDrag("LeftButton")
    self.bg:SetScript("OnDragStart", RaidAssignments.Drag.StartMoving)
    self.bg:SetScript("OnDragStop", RaidAssignments.Drag.StopMovingOrSizing)
    self.bg:SetScript("OnEnter", function()
        RaidAssignments.ToolTip:Hide()
        RaidAssignments.HealToolTip:Hide()
    end)

    self.text = self.bg:CreateFontString(nil, "OVERLAY")
    self.text:SetPoint("TOP", self.bg, "TOP", 0, -20)
    self.text:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 25)
    local r,g,b = RaidAssignments:GetClassColors("Warrior","class")
    self.text:SetTextColor(r,g,b, 1)
    self.text:SetShadowOffset(2,-2)
    self.text:SetText("Raid Assignments")

    local classIconStartX = 0
    local classIconY = -10
    local i = 1
    for n, class in pairs(RaidAssignments.Classes) do
        local r, l, t, b = RaidAssignments:ClassPos(class)
        local classframe = CreateFrame("Button", class, self.bg)
        classframe:SetWidth(22)
        classframe:SetHeight(22)
        classframe:SetBackdropColor(0,0,0,1)
        classframe:SetPoint("TOPLEFT", classIconStartX + (i*25), classIconY)
        classframe:SetFrameStrata("DIALOG")
        classframe.Icon = classframe:CreateTexture(nil, "ARTWORK")
        classframe.Icon:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
        classframe.Icon:SetTexCoord(r, l, t, b)
        classframe.Icon:SetPoint("TOPRIGHT", -1, -1)
        classframe.Icon:SetWidth(22)
        classframe.Icon:SetHeight(22)
        classframe:SetScript("OnEnter", function()
            local r,g,b = RaidAssignments:GetClassColors(this:GetName(),"class")
            GameTooltip:SetOwner(classframe, "ANCHOR_TOPRIGHT")
            GameTooltip:SetText("|cffFFFFFFShow|r "..this:GetName(), r,g,b)
            GameTooltip:Show()
        end)
        classframe:SetScript("OnLeave", function() GameTooltip:Hide() end)
        classframe:SetScript("OnMouseDown", function()
            if arg1 == "LeftButton" then
                if RaidAssignments_Settings[this:GetName()] == 1 then
                    RaidAssignments_Settings[this:GetName()] = 0
                    classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
                else
                    RaidAssignments_Settings[this:GetName()] = 1
                    classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
                end
                -- SYNC ALL WINDOWS AFTER FILTER CHANGE
                RaidAssignments:SyncClassFilters()
            end
        end)
        i = i + 1
        -- Initialize filter state
        if RaidAssignments_Settings[class] == nil then
            RaidAssignments_Settings[class] = 1
        end
        -- Set initial color based on current setting
        if RaidAssignments_Settings[class] == 1 then
            classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
        else
            classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
        end
    end

    local padding = 5
	-- Default 1–8 standard raid icons
	for i = 8, 1, -1 do
		local r, l, t, b = RaidAssignments:GetMarkPos(i)
		local icon = CreateFrame("Frame", "T"..i, self.bg)
		icon:SetWidth(35)
		icon:SetHeight(35)
		icon:SetPoint("TOPLEFT", 50, 85 - ((35 + padding) * (12 - i)))
		icon:SetFrameStrata("DIALOG")
		icon:EnableMouse(true)
		icon:SetScript("OnEnter", function()
			RaidAssignments:OpenToolTip(this:GetName())
		end)
		icon:SetScript("OnLeave", function() end)

		icon.Icon = icon:CreateTexture(nil, "ARTWORK")
		icon.Icon:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
		icon.Icon:SetTexCoord(r, l, t, b)
		icon.Icon:SetPoint("CENTER", 0,0)
		icon.Icon:SetWidth(35)
		icon.Icon:SetHeight(35)
	end

	-- Add 4 Warlock-only marks (Curse icons)
	for i = 9, 12 do
		local data = RaidAssignments.WarlockMarks[i]
		local icon = CreateFrame("Frame", "T"..i, self.bg)
		icon:SetWidth(35)
		icon:SetHeight(35)
		icon:SetPoint("TOPLEFT", 50, -400- ((35 + padding) * (12 - i)))
		icon:SetFrameStrata("DIALOG")
		icon:EnableMouse(true)
		icon:SetScript("OnEnter", function()
			RaidAssignments:OpenToolTip(this:GetName())
		end)
		icon:SetScript("OnLeave", function() end)

		icon.Icon = icon:CreateTexture(nil, "ARTWORK")
		icon.Icon:SetTexture(data.icon)
		icon.Icon:SetPoint("CENTER", 0, 0)
		icon.Icon:SetWidth(35)
		icon.Icon:SetHeight(35)
	end

    local newHealOrder = {"D", "C", "B", "A", "4", "3", "2", "1", "South", "North", "Right", "Left"}
    local padding = 5
    for i = 12, 1, -1 do
        local icon = CreateFrame("Frame", "H"..i, self.bg)
        icon:SetWidth(35)
        icon:SetHeight(35)
        icon:SetPoint("TOPLEFT", 450, -75 - ((35 + padding) * (12 - i)))
        icon:SetFrameStrata("DIALOG")
        icon:EnableMouse(true)
        icon:SetScript("OnEnter", function()
            RaidAssignments:OpenHealToolTip(this:GetName())
        end)
        icon:SetScript("OnLeave", function() end)

        icon.Icon = icon:CreateTexture(nil, "ARTWORK")
        icon.Icon:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\" .. newHealOrder[i] .. ".tga")
        icon.Icon:SetPoint("CENTER", 0,0)
        icon.Icon:SetWidth(35)
        icon.Icon:SetHeight(35)
    end

    self.CloseButton = CreateFrame("Button", nil, self.bg, "UIPanelCloseButton")
    self.CloseButton:SetPoint("TOPLEFT", self:GetWidth()-23, 2)
    self.CloseButton:SetWidth(24)
    self.CloseButton:SetHeight(24)
    self.CloseButton:SetFrameStrata("DIALOG")
    self.CloseButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        RaidAssignments.ToolTip:Hide()
        RaidAssignments.HealToolTip:Hide()
        RaidAssignments.Settings["Animation"] = true
        RaidAssignments.Settings["MainFrame"] = false
    end)

    -- Reset All Button for Main Frame
    self.resetAllButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.resetAllButton:SetPoint("TOPRIGHT", self.CloseButton, "TOPLEFT", -10, -15)
    self.resetAllButton:SetWidth(80)
    self.resetAllButton:SetHeight(24)
    self.resetAllButton:SetText("Reset All")
    self.resetAllButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        -- Clear all tank assignments (marks 1-12)
        for i = 1, 12 do
            RaidAssignments.Marks[i] = {}
            for k, v in pairs(RaidAssignments.Frames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
        end

        -- Clear all heal assignments
        for i = 1, 12 do
            for k = 1, 6 do
                RaidAssignments.HealMarks[i][k] = nil
            end
            for k, v in pairs(RaidAssignments.HealFrames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
        end

        RaidAssignments:UpdateTanks()
        RaidAssignments:UpdateHeals()
        RaidAssignments:SendTanks()
        RaidAssignments:SendHeals()
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: All tank and heal assignments cleared")
    end)

    -- Master Reset All Button (clears everything)
    self.masterResetButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.masterResetButton:SetPoint("TOPRIGHT", self.resetAllButton, "TOPLEFT", -10, 0)
    self.masterResetButton:SetWidth(100)
    self.masterResetButton:SetHeight(24)
    self.masterResetButton:SetText("Reset All Frames")

    -- Your Mark / Curse Frame toggle
    self.yourMarkToggle = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.yourMarkToggle:SetPoint("TOPRIGHT", self.masterResetButton, "TOPLEFT", -10, 0)
    self.yourMarkToggle:SetWidth(75)
    self.yourMarkToggle:SetHeight(24)
    self.yourMarkToggle:SetText("Your Mark")
    self.yourMarkToggle:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        local mf = RaidAssignments.YourMarkFrame
        local cf = RaidAssignments.YourCurseFrame
        RaidAssignments_Settings["showYourMarkFrame"] = not RaidAssignments_Settings["showYourMarkFrame"]
        if RaidAssignments_Settings["showYourMarkFrame"] then
            RaidAssignments:UpdateYourMarkFrame()
            RaidAssignments:UpdateYourCurseFrame()
        else
            if mf then mf:Hide() end
            if cf then cf:Hide() end
        end
    end)
    self.yourMarkToggle:SetScript("OnEnter", function()
        GameTooltip:SetOwner(this, "ANCHOR_BOTTOM")
        GameTooltip:ClearLines()
        GameTooltip:AddLine("Your Mark / Curse Frame", 1, 1, 0.5)
        GameTooltip:AddLine("Toggle your personal mark and curse reminder.", 1, 1, 1)
        GameTooltip:Show()
    end)
    self.yourMarkToggle:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.masterResetButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        -- Clear all tank assignments
        for i = 1, 12 do
            RaidAssignments.Marks[i] = {}
            for k, v in pairs(RaidAssignments.Frames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
        end

        -- Clear all heal assignments
        for i = 1, 12 do
            for k = 1, 6 do
                RaidAssignments.HealMarks[i][k] = nil
            end
            for k, v in pairs(RaidAssignments.HealFrames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
        end

        -- Clear all general assignments
        for i = 1, 10 do
            local maxSlots = (i >= 9 and i <= 10) and 7 or 5
            for k = 1, maxSlots do
                RaidAssignments.GeneralMarks[i][k] = nil
            end
            for k, v in pairs(RaidAssignments.GeneralFrames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
        end

        RaidAssignments:UpdateTanks()
        RaidAssignments:UpdateHeals()
        RaidAssignments:UpdateGeneral()
        RaidAssignments:SendTanks()
        RaidAssignments:SendHeals()
        RaidAssignments:SendGeneral()
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: All assignments cleared from all frames")
    end)

    -- KT Image Button
    self.ktButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.ktButton:SetPoint("BOTTOM", -440, 10)
    self.ktButton:SetWidth(60)
    self.ktButton:SetHeight(24)
    self.ktButton:SetText("KT Image")
    self.ktButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        if not RaidAssignments.KTFrame then
            RaidAssignments.KTFrame = CreateFrame("Frame", "RaidAssignmentsKTFrame", UIParent)
            RaidAssignments.KTFrame:SetFrameStrata("DIALOG")
            RaidAssignments.KTFrame:SetWidth(512)
            RaidAssignments.KTFrame:SetHeight(512)
            RaidAssignments.KTFrame:SetPoint("CENTER", 0, 0)
            RaidAssignments.KTFrame:EnableMouse(true)
            RaidAssignments.KTFrame:SetMovable(true)
            RaidAssignments.KTFrame:RegisterForDrag("LeftButton")
            RaidAssignments.KTFrame:SetScript("OnDragStart", function() this:StartMoving() end)
            RaidAssignments.KTFrame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)

            -- Image
            RaidAssignments.KTFrame.texture = RaidAssignments.KTFrame:CreateTexture(nil, "ARTWORK")
            RaidAssignments.KTFrame.texture:SetAllPoints(RaidAssignments.KTFrame)
            RaidAssignments.KTFrame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\KT.tga")

            -- Close Button
            RaidAssignments.KTFrame.close = CreateFrame("Button", nil, RaidAssignments.KTFrame, "UIPanelCloseButton")
            RaidAssignments.KTFrame.close:SetPoint("TOPRIGHT", RaidAssignments.KTFrame, "TOPRIGHT")
            RaidAssignments.KTFrame.close:SetScript("OnClick", function()
                RaidAssignments.KTFrame:Hide()
            end)
        end

        if RaidAssignments.KTFrame:IsShown() then
            RaidAssignments.KTFrame:Hide()
        else
            RaidAssignments.KTFrame:Show()
        end
    end)

    -- 4H Image Button
    self.fourhButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.fourhButton:SetPoint("LEFT", self.ktButton, "RIGHT", 5, 0)
    self.fourhButton:SetWidth(60)
    self.fourhButton:SetHeight(24)
    self.fourhButton:SetText("4H Image")
    self.fourhButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        if not RaidAssignments.FourHFrame then
            RaidAssignments.FourHFrame = CreateFrame("Frame", "RaidAssignmentsFourHFrame", UIParent)
            RaidAssignments.FourHFrame:SetFrameStrata("DIALOG")
            RaidAssignments.FourHFrame:SetWidth(512)
            RaidAssignments.FourHFrame:SetHeight(512)
            RaidAssignments.FourHFrame:SetPoint("CENTER", 0, 0)
            RaidAssignments.FourHFrame:EnableMouse(true)
            RaidAssignments.FourHFrame:SetMovable(true)
            RaidAssignments.FourHFrame:RegisterForDrag("LeftButton")
            RaidAssignments.FourHFrame:SetScript("OnDragStart", function() this:StartMoving() end)
            RaidAssignments.FourHFrame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)

            -- Image
            RaidAssignments.FourHFrame.texture = RaidAssignments.FourHFrame:CreateTexture(nil, "ARTWORK")
            RaidAssignments.FourHFrame.texture:SetAllPoints(RaidAssignments.FourHFrame)
            RaidAssignments.FourHFrame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\4H.tga")

            -- Close Button
            RaidAssignments.FourHFrame.close = CreateFrame("Button", nil, RaidAssignments.FourHFrame, "UIPanelCloseButton")
            RaidAssignments.FourHFrame.close:SetPoint("TOPRIGHT", RaidAssignments.FourHFrame, "TOPRIGHT")
            RaidAssignments.FourHFrame.close:SetScript("OnClick", function()
                RaidAssignments.FourHFrame:Hide()
            end)
        end

        if RaidAssignments.FourHFrame:IsShown() then
            RaidAssignments.FourHFrame:Hide()
        else
            RaidAssignments.FourHFrame:Show()
        end
    end)

    -- Cthun Image Button
    self.cthunButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.cthunButton:SetPoint("LEFT", self.fourhButton, "RIGHT", 5, 0) -- Right next to 4H button
    self.cthunButton:SetWidth(60)
    self.cthunButton:SetHeight(24)
    self.cthunButton:SetText("Cthun Image")
    self.cthunButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        if not RaidAssignments.CthunFrame then
            RaidAssignments.CthunFrame = CreateFrame("Frame", "RaidAssignmentsCthunFrame", UIParent)
            RaidAssignments.CthunFrame:SetFrameStrata("DIALOG")
            RaidAssignments.CthunFrame:SetWidth(512)
            RaidAssignments.CthunFrame:SetHeight(512)
            RaidAssignments.CthunFrame:SetPoint("CENTER", 0, 0)
            RaidAssignments.CthunFrame:EnableMouse(true)
            RaidAssignments.CthunFrame:SetMovable(true)
            RaidAssignments.CthunFrame:RegisterForDrag("LeftButton")
            RaidAssignments.CthunFrame:SetScript("OnDragStart", function() this:StartMoving() end)
            RaidAssignments.CthunFrame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)

            -- Image
            RaidAssignments.CthunFrame.texture = RaidAssignments.CthunFrame:CreateTexture(nil, "ARTWORK")
            RaidAssignments.CthunFrame.texture:SetAllPoints(RaidAssignments.CthunFrame)
            RaidAssignments.CthunFrame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\CThun.tga")

            -- Close Button
            RaidAssignments.CthunFrame.close = CreateFrame("Button", nil, RaidAssignments.CthunFrame, "UIPanelCloseButton")
            RaidAssignments.CthunFrame.close:SetPoint("TOPRIGHT", RaidAssignments.CthunFrame, "TOPRIGHT")
            RaidAssignments.CthunFrame.close:SetScript("OnClick", function()
                RaidAssignments.CthunFrame:Hide()
            end)
        end

        if RaidAssignments.CthunFrame:IsShown() then
            RaidAssignments.CthunFrame:Hide()
        else
            RaidAssignments.CthunFrame:Show()
        end
    end)


    -- Post Tank Assignments Button
    self.tankButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.tankButton:SetPoint("BOTTOM", -200, 10)
    self.tankButton:SetFrameStrata("DIALOG")
    self.tankButton:SetWidth(145)
    self.tankButton:SetHeight(24)
    self.tankButton:SetText("Post Tank Assignments")
    self.tankButton:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            RaidAssignments:PostRaidAssignments()
        end
    end)

    -- Post Heal Assignments Button
    self.healButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.healButton:SetPoint("BOTTOM", -50, 10)
    self.healButton:SetFrameStrata("DIALOG")
    self.healButton:SetWidth(145)
    self.healButton:SetHeight(24)
    self.healButton:SetText("Post Heal Assignments")
    self.healButton:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            RaidAssignments:PostHealAssignments()
        end
    end)

    -- Post Curses Button (SWAPPED POSITION)
    self.cursesButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.cursesButton:SetPoint("BOTTOM", 100, 10)
    self.cursesButton:SetWidth(145)
    self.cursesButton:SetHeight(24)
    self.cursesButton:SetText("Post Curses")
    self.cursesButton:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            RaidAssignments:PostCurses()
        end
    end)

    -- Post All Assignments Button
    self.dbutton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.dbutton:SetPoint("BOTTOM", 250, 10)
    self.dbutton:SetFrameStrata("DIALOG")
    self.dbutton:SetWidth(145)
    self.dbutton:SetHeight(24)
    self.dbutton:SetText("Post All Assignments")
    self.dbutton:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            RaidAssignments:PostAssignments()
        end
    end)

    -- Button for General Assignments
    self.generalButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.generalButton:SetPoint("BOTTOM", 400, 10)
    self.generalButton:SetWidth(145)
    self.generalButton:SetHeight(24)
    self.generalButton:SetText("General Assignments")
    self.generalButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        RaidAssignments.ToolTip:Hide()
        RaidAssignments.HealToolTip:Hide()
        RaidAssignments.Settings["Animation"] = true
        RaidAssignments.Settings["MainFrame"] = false
        RaidAssignments.Settings["GeneralAnimation"] = false
        RaidAssignments.Settings["GeneralFrame"] = false
        RaidAssignments.Settings["GeneralSizeX"] = 0
        RaidAssignments.Settings["GeneralSizeY"] = 0
        RaidAssignments.GeneralAssignments:Show()
    end)

	-- Initialize GeneralToolTip Frame
    RaidAssignments.GeneralToolTip:SetFrameStrata("DIALOG")
    RaidAssignments.GeneralToolTip:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = false,
        tileSize = 16,
        edgeSize = 2,
        insets = { left = 1, right = 1, top = 1, bottom = 1 }
    })
    RaidAssignments.GeneralToolTip:SetBackdropColor(0, 0, 0, 1)
    RaidAssignments.GeneralToolTip:SetBackdropBorderColor(1, 1, 1, 0.5)
    RaidAssignments.GeneralToolTip:EnableMouse(true)
    RaidAssignments.GeneralToolTip:EnableMouseWheel(true)
    RaidAssignments.GeneralToolTip:Hide()

    -- Set up hide behavior for GeneralToolTip
    RaidAssignments.GeneralToolTip:SetScript("OnHide", function()
        this.isVisible = false
        this.hideTimer = nil
        this:SetScript("OnUpdate", nil)
    end)

    -- Tooltips should be on HIGHER strata than main frames
    RaidAssignments.ToolTip:SetFrameStrata("DIALOG")
    RaidAssignments.HealToolTip:SetFrameStrata("DIALOG")
    RaidAssignments.GeneralToolTip:SetFrameStrata("DIALOG")

    -- Main frames should be on LOWER strata than tooltips
    RaidAssignments:SetFrameStrata("MEDIUM")
    RaidAssignments.GeneralAssignments:SetFrameStrata("MEDIUM")

    -- Initialize custom frames strata if they exist
    for i = 1, 8 do
        if RaidAssignments.CustomFrames[i] and RaidAssignments.CustomFrames[i].frame then
            RaidAssignments.CustomFrames[i].frame:SetFrameStrata("MEDIUM")
        end
    end

    -- UI Scale Buttons
    self.IncreaseScaleButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.IncreaseScaleButton:SetPoint("TOPRIGHT", self.yourMarkToggle, "TOPLEFT", -10, 0)
    self.IncreaseScaleButton:SetWidth(24)
    self.IncreaseScaleButton:SetHeight(24)
    self.IncreaseScaleButton:SetText("+")
    self.IncreaseScaleButton:SetScript("OnClick", function()
        local currentScale = RaidAssignments:GetScale()
        local newScale = math.min(currentScale + 0.1, 2.0) -- Max 200%
        RaidAssignments:SetScale(newScale)
        RaidAssignments_Settings["UIScale"] = newScale
        DEFAULT_CHAT_FRAME:AddMessage(string.format("|cffC79C6E[UI]|r Scale increased to %.1f", newScale))
    end)

    -- Decrease UI Size Button [-]
    self.DecreaseScaleButton = CreateFrame("Button", nil, self.bg, "UIPanelButtonTemplate")
    self.DecreaseScaleButton:SetPoint("RIGHT", self.IncreaseScaleButton, "LEFT", -5, 0)
    self.DecreaseScaleButton:SetWidth(24)
    self.DecreaseScaleButton:SetHeight(24)
    self.DecreaseScaleButton:SetText("-")
    self.DecreaseScaleButton:SetScript("OnClick", function()
        local currentScale = RaidAssignments:GetScale()
        local newScale = math.max(currentScale - 0.1, 0.5) -- Min 50%
        RaidAssignments:SetScale(newScale)
        RaidAssignments_Settings["UIScale"] = newScale
        DEFAULT_CHAT_FRAME:AddMessage(string.format("|cffC79C6E[UI]|r Scale decreased to %.1f", newScale))
    end)


    self.bg:Hide()
    self:Hide()
    RaidAssignments.Settings["MainFrame"] = false
    RaidAssignments.Settings["SizeX"] = 0
    RaidAssignments.Settings["SizeY"] = 0
    self:CreateCustomAssignmentButtons()
end

function RaidAssignments:ConfigGeneralFrame()
    RaidAssignments.GeneralDrag = {}
    function RaidAssignments.GeneralDrag:StartMoving()
        RaidAssignments.GeneralAssignments:StartMoving()
        this.drag = true
    end

    function RaidAssignments.GeneralDrag:StopMovingOrSizing()
        RaidAssignments.GeneralAssignments:StopMovingOrSizing()
        this.drag = false
    end

    local backdrop = {
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = false,
        tileSize = 16,
        edgeSize = 16,  -- THICK WHITE BORDER
        insets = { 
            left = 5, 
            right = 5, 
            top = 5, 
            bottom = 5 
        }
    }

    RaidAssignments.GeneralAssignments:SetFrameStrata("MEDIUM")
    RaidAssignments.GeneralAssignments:SetWidth(RaidAssignments.Settings["GeneralFrameX"])
    RaidAssignments.GeneralAssignments:SetHeight(RaidAssignments.Settings["GeneralFrameY"])
    RaidAssignments.GeneralAssignments:SetPoint("CENTER",0,100)
    RaidAssignments.GeneralAssignments:SetMovable(true)
    RaidAssignments.GeneralAssignments:EnableMouse(true)
    RaidAssignments.GeneralAssignments:RegisterForDrag("LeftButton")
    RaidAssignments.GeneralAssignments:SetBackdrop(backdrop)
    RaidAssignments.GeneralAssignments:SetBackdropColor(0,0,0,1)
    RaidAssignments.GeneralAssignments:SetBackdropBorderColor(1,1,1,1)  -- FULL WHITE BORDER

    RaidAssignments.GeneralAssignments:SetScript("OnUpdate", function()
        if RaidAssignments.GeneralAssignments:IsVisible() then
            if not RaidAssignments.Settings["GeneralFrame"] then
                RaidAssignments.Settings["GeneralFrame"] = true
                RaidAssignments.GeneralAssignments:SetWidth(RaidAssignments.Settings["GeneralFrameX"])
                RaidAssignments.GeneralAssignments:SetHeight(RaidAssignments.Settings["GeneralFrameY"])
                self.generalBg:SetWidth(RaidAssignments.GeneralAssignments:GetWidth())
                self.generalBg:SetHeight(RaidAssignments.GeneralAssignments:GetHeight())
                RaidAssignments.generalBg:Show()
                RaidAssignments:UpdateGeneral()
            elseif RaidAssignments.Settings["GeneralAnimation"] then
                RaidAssignments.Settings["GeneralFrame"] = false
                RaidAssignments.Settings["GeneralAnimation"] = false
                RaidAssignments.generalBg:Hide()
                RaidAssignments.GeneralAssignments:Hide()
            end
        end
    end)

    self.generalBg = CreateFrame("Button", "generalBg", RaidAssignments.GeneralAssignments)
    self.generalBg:SetWidth(RaidAssignments.GeneralAssignments:GetWidth())
    self.generalBg:SetHeight(RaidAssignments.GeneralAssignments:GetHeight()) 
    self.generalBg:SetPoint("TOPLEFT",0,0)
    self.generalBg:SetBackdropColor(0,0,0,1)
    self.generalBg:EnableMouse(true)
    self.generalBg:SetMovable(true)
    self.generalBg:RegisterForDrag("LeftButton")
    self.generalBg:SetScript("OnDragStart", RaidAssignments.GeneralDrag.StartMoving)
    self.generalBg:SetScript("OnDragStop", RaidAssignments.GeneralDrag.StopMovingOrSizing)
    self.generalBg:SetScript("OnEnter", function() RaidAssignments.GeneralToolTip:Hide() end)

    self.generalText = self.generalBg:CreateFontString(nil, "OVERLAY")
    self.generalText:SetPoint("TOP", self.generalBg, "TOP", 0, -20)
    self.generalText:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 25)
    local r,g,b = RaidAssignments:GetClassColors("Warrior","class")
    self.generalText:SetTextColor(r,g,b, 1)
    self.generalText:SetShadowOffset(2,-2)
    self.generalText:SetText("General Assignments")

    local classIconStartX, classIconY, i = -10, -10, 1
    for n, class in pairs(RaidAssignments.Classes) do
        local r, l, t, b = RaidAssignments:ClassPos(class)
        local classframe = CreateFrame("Button", class.."_General", self.generalBg)
        classframe:SetWidth(20) classframe:SetHeight(20)
        classframe:SetBackdropColor(0,0,0,1)
        classframe:SetPoint("TOPLEFT", classIconStartX + (i*22), classIconY)
        classframe:SetFrameStrata("MEDIUM")
        classframe.Icon = classframe:CreateTexture(nil, "ARTWORK")
        classframe.Icon:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
        classframe.Icon:SetTexCoord(r, l, t, b)
        classframe.Icon:SetPoint("TOPRIGHT", -1, -1)
        classframe.Icon:SetWidth(20) classframe.Icon:SetHeight(20)
        classframe:SetScript("OnEnter", function()
            local r,g,b = RaidAssignments:GetClassColors(string.gsub(this:GetName(), "_General", ""),"class")
            GameTooltip:SetOwner(classframe, "ANCHOR_TOPRIGHT")
            GameTooltip:SetText("|cffFFFFFFShow|r "..string.gsub(this:GetName(), "_General", ""), r,g,b)
            GameTooltip:Show()
        end)
        classframe:SetScript("OnLeave", function() GameTooltip:Hide() end)
        classframe:SetScript("OnMouseDown", function()
            if arg1 == "LeftButton" then
                local className = string.gsub(this:GetName(), "_General", "")
                if RaidAssignments_Settings[className] == 1 then
                    RaidAssignments_Settings[className] = 0
                    classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
                else
                    RaidAssignments_Settings[className] = 1
                    classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
                end
                -- SYNC ALL WINDOWS AFTER FILTER CHANGE
                RaidAssignments:SyncClassFilters()
            end
        end)
        i = i + 1
        -- Initialize filter state
        local className = string.gsub(classframe:GetName(), "_General", "")
        if RaidAssignments_Settings[className] == nil then
            RaidAssignments_Settings[className] = 1
        end
        -- Set initial color based on current setting
        if RaidAssignments_Settings[className] == 1 then
            classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
        else
            classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
        end
    end

    -- General marks 1-8 using custom .tga icons
    local padding = 5
    for i = 1, 8 do
        local icon = CreateFrame("Frame", "G"..i, self.generalBg)
        icon:SetWidth(35)
        icon:SetHeight(35)
        icon:SetPoint("TOPLEFT", 50, -75 - ((35 + padding) * (i - 1)))
        icon:SetFrameStrata("MEDIUM")
        icon:EnableMouse(true)
        icon:SetScript("OnEnter", function() RaidAssignments:OpenGeneralToolTip(this:GetName()) end)
        icon:SetScript("OnLeave", function() end)
        icon.Icon = icon:CreateTexture(nil, "ARTWORK")
        icon.Icon:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\" .. i .. ".tga")
        icon.Icon:SetPoint("CENTER", 0, 0)
        icon.Icon:SetWidth(35)
        icon.Icon:SetHeight(35)
    end

    -- Custom marks 9 and 10 with EditBox
    for i = 9, 10 do
        local icon = CreateFrame("Frame", "G"..i, self.generalBg)
        icon:SetWidth(35)
        icon:SetHeight(35)
        icon:SetPoint("TOPLEFT", 50, -75 - ((35 + padding) * (i - 1) + (i - 9) * 30))
        icon:SetFrameStrata("MEDIUM")
        icon:EnableMouse(true)
        icon:SetScript("OnEnter", function()
            RaidAssignments:OpenGeneralToolTip(this:GetName())
        end)
        icon:SetScript("OnLeave", function() end)

        icon.Icon = icon:CreateTexture(nil, "ARTWORK")
        icon.Icon:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\Custom.tga")
        icon.Icon:SetPoint("CENTER", 0, 0)
        icon.Icon:SetWidth(35)
        icon.Icon:SetHeight(35)

        local editBox = CreateFrame("EditBox", "G"..i.."_Edit", self.generalBg, "InputBoxTemplate")
        editBox:SetWidth(90)
        editBox:SetHeight(24)
        editBox:SetPoint("TOPLEFT", icon, "BOTTOMLEFT", -20, -5)
        editBox:SetAutoFocus(false)

        local defaultText = RaidAssignments.GeneralRealMarks[i] or ("Custom " .. (i - 8))
        editBox:SetText(defaultText)

        editBox:SetScript("OnEnterPressed", function()
            local txt = this:GetText()
            if txt and txt ~= "" then
                RaidAssignments.GeneralRealMarks[i] = txt
                RaidAssignments:UpdateGeneral()
            else
                local defaultText = "Custom " .. (i - 8)
                this:SetText(defaultText)
                RaidAssignments.GeneralRealMarks[i] = defaultText
            end
            this:ClearFocus()
        end)

        editBox:SetScript("OnEscapePressed", function()
            local currentText = RaidAssignments.GeneralRealMarks[i] or ("Custom " .. (i - 8))
            this:SetText(currentText)
            this:ClearFocus()
        end)
    end

    -- === TOP-RIGHT: Close Button + Reset All Button ===
    local closeBtn = CreateFrame("Button", nil, self.generalBg, "UIPanelCloseButton")
    closeBtn:SetPoint("TOPRIGHT", RaidAssignments.GeneralAssignments, "TOPRIGHT", -2, -2)
    closeBtn:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        RaidAssignments.GeneralAssignments:Hide()
        RaidAssignments.Settings["GeneralAnimation"] = true
        RaidAssignments.Settings["GeneralFrame"] = false
    end)

    -- Reset All Button - TOP RIGHT, next to Close
    local resetBtn = CreateFrame("Button", nil, self.generalBg, "UIPanelButtonTemplate")
    resetBtn:SetPoint("RIGHT", closeBtn, "LEFT", -8, 0)
    resetBtn:SetWidth(90)
    resetBtn:SetHeight(24)
    resetBtn:SetText("Reset All")
    resetBtn:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            for i = 1, 10 do
                local maxSlots = (i >= 9 and i <= 10) and 7 or 5
                for k = 1, maxSlots do
                    RaidAssignments.GeneralMarks[i][k] = nil
                end
                for k, v in pairs(RaidAssignments.GeneralFrames[i]) do
                    if v:IsVisible() then v:Hide() end
                end
            end
            RaidAssignments:UpdateGeneral()
            RaidAssignments:SendGeneral()
            DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: All general assignments cleared")
        end
    end)

    -- === BOTTOM BUTTONS ===
    local btnY = 10
    local btnSpacing = 10
    local btnStartX = -50

    -- Post General Assignments Button
    local postBtn = CreateFrame("Button", nil, self.generalBg, "UIPanelButtonTemplate")
    postBtn:SetPoint("BOTTOM", btnStartX, btnY)
    postBtn:SetWidth(145)
    postBtn:SetHeight(24)
    postBtn:SetText("Post Assignments")
    postBtn:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            RaidAssignments:PostGeneralAssignments()
        end
    end)

    -- Back to Main Button
    local backBtn = CreateFrame("Button", nil, self.generalBg, "UIPanelButtonTemplate")
    backBtn:SetPoint("LEFT", postBtn, "RIGHT", btnSpacing, 0)
    backBtn:SetWidth(145)
    backBtn:SetHeight(24)
    backBtn:SetText("Back to Main")
    backBtn:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        RaidAssignments.GeneralAssignments:Hide()
        RaidAssignments.Settings["GeneralAnimation"] = true
        RaidAssignments.Settings["GeneralFrame"] = false
        RaidAssignments:Show()
    end)

    self.generalBg:Hide()
    RaidAssignments.GeneralAssignments:Hide()
end

function RaidAssignments:UpdateGeneral()
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        -- Initialize GeneralFrames for all marks if not already done
        for i = 1, 10 do
            if not RaidAssignments.GeneralFrames[i] then
                RaidAssignments.GeneralFrames[i] = {}
            end
        end

        -- Process each mark (1-10)
        for i = 1, 10 do
            -- Get the mark icon frame (G1 to G10)
            local iconFrame = _G["G" .. i]
            if iconFrame then
                iconFrame:Show()
            end

            -- Hide all player frames for this mark first
            for k, v in pairs(RaidAssignments.GeneralFrames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end

            -- Remove players no longer in raid
            local maxSlots = (i >= 9 and i <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
            for k = 1, maxSlots do
                local v = RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k]
                if v and not RaidAssignments:IsInRaid(v) then
                    RaidAssignments.GeneralMarks[i][k] = nil
                end
            end

            -- Show frames for assigned players in correct slots
            for slot = 1, maxSlots do
                local v = RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][slot]
                if v then
                    -- Create frame if it doesn't exist
                    if not RaidAssignments.GeneralFrames[i][v] then
                        RaidAssignments.GeneralFrames[i][v] = RaidAssignments:AddGeneralFrame(v, i)
                    end
                    local frame = RaidAssignments.GeneralFrames[i][v]
                    frame:SetPoint("RIGHT", 5 + (85 * slot), 0)
                    frame.texture:SetWidth(frame:GetWidth() - 4)
                    frame.texture:SetVertexColor(RaidAssignments:GetClassColors(v, "rgb"))
                    frame:Show()
                end
            end
        end
    else
        -- Hide all frames and clear marks if not in raid
        for i = 1, 10 do
            local iconFrame = _G["G" .. i]
            if iconFrame then
                iconFrame:Show()
            end
            for k, v in pairs(RaidAssignments.GeneralFrames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
            -- Clear all slots properly
            local maxSlots = (i >= 9 and i <= 10) and 7 or 5
            for k = 1, maxSlots do
                if RaidAssignments.GeneralMarks[i] then
                    RaidAssignments.GeneralMarks[i][k] = nil
                end
            end
        end
    end
end

function RaidAssignments:InitializeClassFilters()
    for _, class in pairs(RaidAssignments.Classes) do
        if RaidAssignments_Settings[class] == nil then
            RaidAssignments_Settings[class] = 1  -- Default to enabled
        end
    end
end

function RaidAssignments:WhisperAssignments()
    if not IsRaidOfficer("player") then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: You must be a raid officer to whisper assignments")
        return
    end
    for i = 1, 8 do
        for k, v in pairs(RaidAssignments.Marks[i]) do
            if RaidAssignments:IsInRaid(v) then
                local text = "You are assigned to tank " .. RaidAssignments.RealMarks[i] .. " (slot " .. k .. ")"
                SendChatMessage(text, "WHISPER", nil, v)
            end
        end
    end
    for i = 1, 12 do
        for k = 1, 4 do
            local v = RaidAssignments.HealMarks[i][k]
            if v and RaidAssignments:IsInRaid(v) then
                local text = "You are assigned to heal " .. RaidAssignments.HealRealMarks[i] .. " (slot " .. k .. ")"
                SendChatMessage(text, "WHISPER", nil, v)
            end
        end
    end
    for i = 1, 8 do
        for k, v in pairs(RaidAssignments.GeneralMarks[i]) do
            if RaidAssignments:IsInRaid(v) then
                local text = "You are assigned to " .. RaidAssignments.GeneralRealMarks[i] .. " (slot " .. k .. ")"
                SendChatMessage(text, "WHISPER", nil, v)
            end
        end
    end
    DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Whispered assignments to players")
end

function RaidAssignments:SetTankChannelString()
	local channelChar = self.TankChannelEditBox:GetText()
	if channelChar == "s" or channelChar == "S" then
		self.TankChannelSelectedFontString:SetText("Say")
	elseif channelChar == "r" or channelChar == "R" then
		self.TankChannelSelectedFontString:SetText("Raid")
	elseif channelChar == "p" or channelChar == "P" then
		self.TankChannelSelectedFontString:SetText("Group")
	elseif channelChar == "g" or channelChar == "G" then
		self.TankChannelSelectedFontString:SetText("Guild")
	elseif channelChar == "e" or channelChar == "E" then
		self.TankChannelSelectedFontString:SetText("Emote")
	elseif channelChar == "rw" or channelChar == "RW" then
		self.TankChannelSelectedFontString:SetText("Raid Warning")
	else
		local id, name = GetChannelName(channelChar)
		self.TankChannelSelectedFontString:SetText(name or "Unknown")
	end
end

function RaidAssignments:GetSendChannel(chanName)
	if not chanName or chanName == "" or chanName == " " then
		return nil,nil
	end
	chanName = string.lower(chanName)
	if RaidAssignments.ChanTable[chanName] then
		if type(RaidAssignments.ChanTable[chanName]) == "table" then
			local chan = RaidAssignments.ChanTable[chanName][1]
			local bla = RaidAssignments.ChanTable[chanName][2]
			return chan,bla
		else
			local chan = RaidAssignments.ChanTable[chanName]
			return chan,chanName
		end
	end
	return "WHISPER",chanName
end

function RaidAssignments:GetMarkPos(mark)
	if mark == 1 then return 0, 0.25, 0, 0.25 end
	if mark == 2 then return 0.25, 0.5, 0, 0.25 end
	if mark == 3 then return 0.5, 0.75, 0, 0.25 end
	if mark == 4 then return 0.75, 1, 0, 0.25 end
	if mark == 5 then return 0, 0.25, 0.25, 0.5 end
	if mark == 6 then return 0.25, 0.5, 0.25, 0.5 end
	if mark == 7 then return 0.5, 0.75, 0.25, 0.5 end
	if mark == 8 then return 0.75, 1, 0.25, 0.5 end
	return 0, 0.25, 0.5, 0.75 -- Returns empty next one, so blank
end

function RaidAssignments:ClassPos(class)
	if class == "Warrior" then return 0, 0.25, 0, 0.25 end
	if class == "Mage" then return 0.25, 0.5, 0, 0.25 end
	if class == "Rogue" then return 0.5, 0.75, 0, 0.25 end
	if class == "Druid" then return 0.75, 1, 0, 0.25 end
	if class == "Hunter" then return 0, 0.25, 0.25, 0.5 end
	if class == "Shaman" then return 0.25, 0.5, 0.25, 0.5 end
	if class == "Priest" then return 0.5, 0.75, 0.25, 0.5 end
	if class == "Warlock" then return 0.75, 1, 0.25, 0.5 end
	if class == "Paladin" then return 0, 0.25, 0.5, 0.75 end
end

function RaidAssignments:GetClassColors(name, color)
	if color == "rgb" then
		if name == UnitName("player") then
			if UnitClass("player") == "Warrior" then return 0.78, 0.61, 0.43,1
			elseif UnitClass("player") == "Hunter" then return 0.67, 0.83, 0.45,1
			elseif UnitClass("player") == "Mage" then return 0.41, 0.80, 0.94,1
			elseif UnitClass("player") == "Rogue" then return 1.00, 0.96, 0.41,1
			elseif UnitClass("player") == "Warlock" then return 0.58, 0.51, 0.79,1
			elseif UnitClass("player") == "Druid" then return 1, 0.49, 0.04,1
			elseif UnitClass("player") == "Shaman" then return 0.0, 0.44, 0.87,1
			elseif UnitClass("player") == "Priest" then return 1.00, 1.00, 1.00,1
			elseif UnitClass("player") == "Paladin" then return 0.96, 0.55, 0.73,1
			end
		end
		if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
			local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
			local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()
			for i=1,numMembers do
				local unitName, unitClass
				if RaidAssignments.TestMode then
					unitName = roster[i].name
					unitClass = roster[i].class
				else
					unitName = UnitName("raid"..i)
					unitClass = UnitClass("raid"..i)
				end
				if unitName == name then
					if unitClass == "Warrior" then return 0.78, 0.61, 0.43,1
					elseif unitClass == "Hunter" then return 0.67, 0.83, 0.45,1
					elseif unitClass == "Mage" then return 0.41, 0.80, 0.94,1
					elseif unitClass == "Rogue" then return 1.00, 0.96, 0.41,1
					elseif unitClass == "Warlock" then return 0.58, 0.51, 0.79,1
					elseif unitClass == "Druid" then return 1, 0.49, 0.04,1
					elseif unitClass == "Shaman" then return 0.0, 0.44, 0.87,1
					elseif unitClass == "Priest" then return 1.00, 1.00, 1.00,1
					elseif unitClass == "Paladin" then return 0.96, 0.55, 0.73,1
					end
				end
			end
		elseif GetNumPartyMembers() > 0 then
			for i=1,GetNumPartyMembers() do
				if UnitName("party"..i) == name then
					if UnitClass("party"..i) == "Warrior" then return 0.78, 0.61, 0.43,1
					elseif UnitClass("party"..i) == "Hunter" then return 0.67, 0.83, 0.45,1
					elseif UnitClass("party"..i) == "Mage" then return 0.41, 0.80, 0.94,1
					elseif UnitClass("party"..i) == "Rogue" then return 1.00, 0.96, 0.41,1
					elseif UnitClass("party"..i) == "Warlock" then return 0.58, 0.51, 0.79,1
					elseif UnitClass("party"..i) == "Druid" then return 1, 0.49, 0.04,1
					elseif UnitClass("party"..i) == "Shaman" then return 0.0, 0.44, 0.87,1
					elseif UnitClass("party"..i) == "Priest" then return 1.00, 1.00, 1.00,1
					elseif UnitClass("party"..i) == "Paladin" then return 0.96, 0.55, 0.73,1
					end
				end
			end
			if UnitName("player") == name then
				if UnitClass("player") == "Warrior" then return 0.78, 0.61, 0.43,1
				elseif UnitClass("player") == "Hunter" then return 0.67, 0.83, 0.45,1
				elseif UnitClass("player") == "Mage" then return 0.41, 0.80, 0.94,1
				elseif UnitClass("player") == "Rogue" then return 1.00, 0.96, 0.41,1
				elseif UnitClass("player") == "Warlock" then return 0.58, 0.51, 0.79,1
				elseif UnitClass("player") == "Druid" then return 1, 0.49, 0.04,1
				elseif UnitClass("player") == "Shaman" then return 0.0, 0.44, 0.87,1
				elseif UnitClass("player") == "Priest" then return 1.00, 1.00, 1.00,1
				elseif UnitClass("player") == "Paladin" then return 0.96, 0.55, 0.73,1
				end
			end
		else
			if UnitName("player") == name then
				if UnitClass("player") == "Warrior" then return 0.78, 0.61, 0.43,1
				elseif UnitClass("player") == "Hunter" then return 0.67, 0.83, 0.45,1
				elseif UnitClass("player") == "Mage" then return 0.41, 0.80, 0.94,1
				elseif UnitClass("player") == "Rogue" then return 1.00, 0.96, 0.41,1
				elseif UnitClass("player") == "Warlock" then return 0.58, 0.51, 0.79,1
				elseif UnitClass("player") == "Druid" then return 1, 0.49, 0.04,1
				elseif UnitClass("player") == "Shaman" then return 0.0, 0.44, 0.87,1
				elseif UnitClass("player") == "Priest" then return 1.00, 1.00, 1.00,1
				elseif UnitClass("player") == "Paladin" then return 0.96, 0.55, 0.73,1
				end
			end
		end
	elseif color == "cff" then
		if name == UnitName("player") then
			if UnitClass("player") == "Warrior" then return "|cffC79C6E"..name.."|r"
			elseif UnitClass("player") == "Hunter" then return "|cffABD473"..name.."|r"
			elseif UnitClass("player") == "Mage" then return "|cff69CCF0"..name.."|r"
			elseif UnitClass("player") == "Rogue" then return "|cffFFF569"..name.."|r"
			elseif UnitClass("player") == "Warlock" then return "|cff9482C9"..name.."|r"
			elseif UnitClass("player") == "Druid" then return "|cffFF7D0A"..name.."|r"
			elseif UnitClass("player") == "Shaman" then return "|cff0070DE"..name.."|r"
			elseif UnitClass("player") == "Priest" then return "|cffFFFFFF"..name.."|r"
			elseif UnitClass("player") == "Paladin" then return "|cffF58CBA"..name.."|r"
			end
		end
		if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
			local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
			local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()
			for i=1,numMembers do
				local unitName, unitClass
				if RaidAssignments.TestMode then
					unitName = roster[i].name
					unitClass = roster[i].class
				else
					unitName = UnitName("raid"..i)
					unitClass = UnitClass("raid"..i)
				end
				if unitName == name then
					if unitClass == "Warrior" then return "|cffC79C6E"..name.."|r"
					elseif unitClass == "Hunter" then return "|cffABD473"..name.."|r"
					elseif unitClass == "Mage" then return "|cff69CCF0"..name.."|r"
					elseif unitClass == "Rogue" then return "|cffFFF569"..name.."|r"
					elseif unitClass == "Warlock" then return "|cff9482C9"..name.."|r"
					elseif unitClass == "Druid" then return "|cffFF7D0A"..name.."|r"
					elseif unitClass == "Shaman" then return "|cff0070DE"..name.."|r"
					elseif unitClass == "Priest" then return "|cffFFFFFF"..name.."|r"
					elseif unitClass == "Paladin" then return "|cffF58CBA"..name.."|r"
					end
				end
			end
		else
			for i=1,GetNumPartyMembers() do
				if UnitName("party"..i) == name then
					if UnitClass("party"..i) == "Warrior" then return "|cffC79C6E"..name.."|r"
					elseif UnitClass("party"..i) == "Hunter" then return "|cffABD473"..name.."|r"
					elseif UnitClass("party"..i) == "Mage" then return "|cff69CCF0"..name.."|r"
					elseif UnitClass("party"..i) == "Rogue" then return "|cffFFF569"..name.."|r"
					elseif UnitClass("party"..i) == "Warlock" then return "|cff9482C9"..name.."|r"
					elseif UnitClass("party"..i) == "Druid" then return "|cffFF7D0A"..name.."|r"
					elseif UnitClass("party"..i) == "Shaman" then return "|cff0070DE"..name.."|r"
					elseif UnitClass("party"..i) == "Priest" then return "|cffFFFFFF"..name.."|r"
					elseif UnitClass("party"..i) == "Paladin" then return "|cffF58CBA"..name.."|r"
					end
				end
			end
			if UnitName("player") == name then
				if UnitClass("player") == "Warrior" then return "|cffC79C6E"..name.."|r"
				elseif UnitClass("player") == "Hunter" then return "|cffABD473"..name.."|r"
				elseif UnitClass("player") == "Mage" then return "|cff69CCF0"..name.."|r"
				elseif UnitClass("player") == "Rogue" then return "|cffFFF569"..name.."|r"
				elseif UnitClass("player") == "Warlock" then return "|cff9482C9"..name.."|r"
				elseif UnitClass("player") == "Druid" then return "|cffFF7D0A"..name.."|r"
				elseif UnitClass("player") == "Shaman" then return "|cff0070DE"..name.."|r"
				elseif UnitClass("player") == "Priest" then return "|cffFFFFFF"..name.."|r"
				elseif UnitClass("player") == "Paladin" then return "|cffF58CBA"..name.."|r"
				end
			end
		end
	elseif color == "class" then
		if (name == "Warrior") then
			return 0.78, 0.61, 0.43
		end
		if(name=="Mage") then
			return 0.41, 0.80, 0.94
		end
		if(name=="Rogue") then
			return 1.00, 0.96, 0.41
		end
		if(name=="Druid") then
			return 1, 0.49, 0.04
		end
		if(name=="Hunter") then
			return 0.67, 0.83, 0.45
		end
		if(name=="Shaman") then
			return 0.0, 0.44, 0.87
		end
		if(name=="Priest") then
			return 1.00, 1.00, 1.00
		end
		if(name=="Warlock") then
			return 0.58, 0.51, 0.79
		end
		if(name=="Paladin") then
			return 0.96, 0.55, 0.73
		end
	elseif color == "mark" then
		if name == "Skull" then return "|cffFFFFFF"..name.."|r" end
		if name == "Cross" then return "|cffFF0000"..name.."|r" end
		if name == "Square" then return "|cff00B4FF"..name.."|r" end
		if name == "Moon" then return "|cffCEECF5"..name.."|r" end
		if name == "Triangle" then return "|cff66FF00"..name.."|r" end
		if name == "Diamond" then return "|cffCC00FF"..name.."|r" end
		if name == "Circle" then return "|cffFF9900"..name.."|r" end
		if name == "Star" then return "|cffFFFF00"..name.."|r" end
	end
end

function RaidAssignments:IsInRaid(name)
	if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
		local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
		local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()
		for i=1,numMembers do
			local unitName
			if RaidAssignments.TestMode then
				unitName = roster[i].name
			else
				unitName = UnitName("raid"..i)
			end
			if unitName == name then
				return true
			end
		end
	elseif GetNumPartyMembers() > 0 then
		for i=1,GetNumPartyMembers() do
			if UnitName("party"..i) == name then
				return true
			end
		end
		if UnitName("player") == name then
			return true
		end
	else
		if UnitName("player") == name then
			return true
		end
	end
	return false
end

-- Restrict Curse Marks (9–12) to Warlocks only
function RaidAssignments:CanAssignToMark(mark, playerName)
    if mark >= 9 and mark <= 12 then
        -- Determine player's class
        local playerClass
        if RaidAssignments.TestMode then
            for _, unit in ipairs(RaidAssignments.TestRoster) do
                if unit.name == playerName then
                    playerClass = unit.class
                    break
                end
            end
        else
            for i = 1, GetNumRaidMembers() do
                if UnitName("raid"..i) == playerName then
                    playerClass = UnitClass("raid"..i)
                    break
                end
            end
            if not playerClass and UnitName("player") == playerName then
                playerClass = UnitClass("player")
            end
        end

        -- Restrict to Warlock
        if playerClass ~= "Warlock" then
            return false
        end
    end
    return true
end

function RaidAssignments:GetRaidID(name)
	if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
		local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
		local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()
		for i=1,numMembers do
			local unitName
			if RaidAssignments.TestMode then
				unitName = roster[i].name
			else
				unitName = UnitName("raid"..i)
			end
			if unitName == name then
				return "raid"..i
			end
		end
	elseif GetNumPartyMembers() > 0 then
		for i=1,GetNumPartyMembers() do
			if UnitName("party"..i) == name then
				return "party"..i
			end
		end
		if UnitName("player") == name then
			return "player"
		end
	else
		if UnitName("player") == name then
			return "player"
		end
	end
	return nil
end

function RaidAssignments:UpdateTanks()
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        for i=1,12 do  -- Changed from 8 to 12 to include curse marks
            -- Ensure Marks[i] exists
            if not RaidAssignments.Marks[i] then
                RaidAssignments.Marks[i] = {}
            end

            -- Hide old frames
            for k,v in pairs(RaidAssignments.Frames[i]) do
                if v and v.Hide then
                    v:Hide()
                end
            end

            -- Remove players not in raid anymore - FIXED VERSION
            local maxSlots = (i <= 8) and 4 or 1  -- Regular marks: 4 slots, Curses: 1 slot
            for k=1,maxSlots do
                local v = RaidAssignments.Marks[i][k]
                if v and not RaidAssignments:IsInRaid(v) then
                    RaidAssignments.Marks[i][k] = nil
                    if RaidAssignments.Frames[i][v] then
                        RaidAssignments.Frames[i][v]:Hide()
                        RaidAssignments.Frames[i][v] = nil
                    end
                end
            end

            -- Show frames for tanks/curses in correct slots
            for slot=1,maxSlots do
                local v = RaidAssignments.Marks[i][slot]
                if v then
                    RaidAssignments.Frames[i][v] = RaidAssignments.Frames[i][v] or RaidAssignments:AddTankFrame(v,i)
                    local frame = RaidAssignments.Frames[i][v]
                    frame:SetPoint("RIGHT", 5 + (85 * slot), 0)

                    -- Always full width
                    frame.texture:SetWidth(frame:GetWidth() - 4)

                    frame.texture:SetVertexColor(RaidAssignments:GetClassColors(v, "rgb"))
                    frame:Show()
                end
            end
        end
    else
        for i=1,12 do  -- Changed from 8 to 12 to include curse marks
            -- Ensure Marks[i] exists
            if not RaidAssignments.Marks[i] then
                RaidAssignments.Marks[i] = {}
            end

            for k,v in pairs(RaidAssignments.Frames[i]) do
                if v and v:IsVisible() then
                    v:Hide()
                end
            end
            -- Clear the table properly
            local maxSlots = (i <= 8) and 4 or 1
            for k=1,maxSlots do
                RaidAssignments.Marks[i][k] = nil
            end
        end
    end
    RaidAssignments:UpdateYourMarkFrame()
    RaidAssignments:UpdateYourCurseFrame()
end

function RaidAssignments:UpdateHeals()
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        -- Hide old frames first
        for i=1,12 do
            for k,v in pairs(RaidAssignments.HealFrames[i]) do
                v:Hide()
            end
        end

        -- Remove players not in raid anymore from heal marks (check all 6 slots)
        for i=1,12 do
            for k=1,6 do  -- Changed from 4 to 6
                local name = RaidAssignments.HealMarks[i][k]
                if name and not RaidAssignments:IsInRaid(name) then
                    RaidAssignments.HealMarks[i][k] = nil
                end
            end
        end

        -- Show healers (all 6 slots)
        for i=1,12 do
            for k=1,6 do  -- Changed from 4 to 6
                local name = RaidAssignments.HealMarks[i][k]
                if name then
                    RaidAssignments.HealFrames[i][name] = RaidAssignments.HealFrames[i][name] or RaidAssignments:AddHealFrame(name, i)
                    local frame = RaidAssignments.HealFrames[i][name]
                    frame:SetPoint("RIGHT", 5 + (85 * k), 0)
                    frame.texture:SetWidth(frame:GetWidth() - 4)
                    frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
                    frame:Show()
                end
            end
        end
    else
        -- Hide all frames and clear marks if not in raid (clear all 6 slots)
        for i=1,12 do
            for k,v in pairs(RaidAssignments.HealFrames[i]) do
                if v:IsVisible() then
                    v:Hide()
                end
            end
            -- Clear all 6 slots
            for k=1,6 do  -- Changed from 4 to 6
                RaidAssignments.HealMarks[i][k] = nil
            end
        end
    end
end

function RaidAssignments:SendTanks()
    if IsRaidOfficer("player") then
        local sendstring = ""
        -- Send ALL marks 1-12 (including curses) with consistent format
        for mark=1,12 do
            for k,v in pairs(RaidAssignments.Marks[mark]) do
                sendstring = sendstring .. mark .. "_" .. k .. "_" .. v .. ","
            end
        end
        SendAddonMessage("TankAssignmentsMarks", sendstring, "RAID")
    end
end

function RaidAssignments:SendHeals()
    if IsRaidOfficer("player") then
        local sendstring = ""
        for mark = 1, 12 do
            for slot = 1, 6 do
                local v = RaidAssignments.HealMarks[mark][slot]
                if v then
                    -- Use underscore separators
                    sendstring = sendstring .. mark .. "_" .. slot .. "_" .. v .. ","
                end
            end
        end
        SendAddonMessage("HealAssignmentsMarks", sendstring, "RAID")
    end
end

function RaidAssignments:SanitizeName(name)
    if not name then return "" end
    local sanitized = string.gsub(name, "[^%w%s%-]", "")
    return sanitized
end

function RaidAssignments:SendGeneral()
    if IsRaidOfficer("player") then
        local sendstring = ""
        for mark = 1, 10 do
            if RaidAssignments.GeneralMarks[mark] then
                local maxSlots = (mark >= 9 and mark <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
                for slot = 1, maxSlots do
                    local v = RaidAssignments.GeneralMarks[mark][slot]
                    if v and type(slot) == "number" then
                        -- Use simple concatenation without special characters
                        sendstring = sendstring .. mark .. "_" .. slot .. "_" .. v .. ","
                    end
                end
            end
        end
        SendAddonMessage("RaidAssignmentsGeneralMarks", sendstring, "RAID")
    end
end

function RaidAssignments:OpenToolTip(frameName)
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        for k, v in pairs(RaidAssignments.Frames["ToolTip"]) do
            v:Hide()
        end
        local index = 0
        local n = tonumber(string.sub(frameName, 2))
        -- Safely get assigned count for curse marks (9-12)
        local assignedCount = 0
		if n and n >= 9 and n <= 12 then
            if RaidAssignments.Marks[n] then
                -- Count actual assigned players
                for k, v in pairs(RaidAssignments.Marks[n]) do
                    if v and type(k) == "number" then
                        assignedCount = assignedCount + 1
                    end
                end
            end

            -- Don't show tooltip if curse mark already has 1 player assigned
            if assignedCount >= 1 then
                return
            end
        end

        local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
        local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()

        -- Collect eligible players
        local eligiblePlayers = {}
        for i = 1, numMembers do
            local name, class
            if RaidAssignments.TestMode then
                name = roster[i] and roster[i].name
                class = roster[i] and roster[i].class
            else
                name = UnitName("raid"..i)
                class = UnitClass("raid"..i)
            end
            if name and class then
                local f = false
                -- Check if player is already assigned within the same category:
                -- raid marks (1-8) and curse marks (9-12) are independent pools.
                local isCurseMark = (n and n >= 9 and n <= 12)
                local checkStart = isCurseMark and 9 or 1
                local checkEnd   = isCurseMark and 12 or 8
                for j = checkStart, checkEnd do
                    if RaidAssignments.Marks[j] then
                        for k, v in pairs(RaidAssignments.Marks[j]) do
                            if name == v then
                                f = true
                                break
                            end
                        end
                    end
                    if f then break end
                end
                if not f then
                    -- SPECIAL HANDLING FOR CURSE MARKS (9-12): Only show Warlocks
					if n and n >= 9 and n <= 12 then
                        if class == "Warlock" and RaidAssignments_Settings[class] == 1 then
                            table.insert(eligiblePlayers, name)
                        end
                    else
                        -- Regular marks (1-8): Show all enabled classes
                        if RaidAssignments_Settings[class] == 1 then
                            table.insert(eligiblePlayers, name)
                        end
                    end
                end
            end
        end

        -- Calculate columns
        local totalPlayers = table.getn(eligiblePlayers)
        if totalPlayers == 0 then return end

        local maxPlayersPerColumn = 10
        local numColumns = math.ceil(totalPlayers / maxPlayersPerColumn)
        local playersPerColumn = math.ceil(totalPlayers / numColumns)
        local actualRows = math.min(playersPerColumn, totalPlayers)

        -- Create columns
        local columnWidth = 80
        local totalWidth = columnWidth * numColumns
        local totalHeight = 25 * actualRows

        -- Set up the tooltip backdrop first
        RaidAssignments.ToolTip:SetBackdrop({
            bgFile = "Interface/Tooltips/UI-Tooltip-Background",
            edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
            tile = false,
            tileSize = 16,
            edgeSize = 2,
            insets = { left = 1, right = 1, top = 1, bottom = 1 }
        })
        RaidAssignments.ToolTip:SetBackdropColor(0, 0, 0, 1)
        RaidAssignments.ToolTip:SetBackdropBorderColor(1, 1, 1, 0.5)
        RaidAssignments.ToolTip:SetWidth(totalWidth)
        RaidAssignments.ToolTip:SetHeight(totalHeight)
        local markFrame = _G[frameName]
			if markFrame then
				RaidAssignments.ToolTip:SetPoint("TOPRIGHT", markFrame, "TOPLEFT", 0, 0)
			else
				RaidAssignments.ToolTip:Hide()
				return
			end
        RaidAssignments.ToolTip:EnableMouse(true)
        RaidAssignments.ToolTip:EnableMouseWheel(true)

        -- Store the original mark frame for reference
        RaidAssignments.ToolTip.originalMark = _G[frameName]
        RaidAssignments.ToolTip.isVisible = true
        RaidAssignments.ToolTip:SetScript("OnLeave", function()
            -- Check if mouse is actually leaving both the tooltip AND the original mark
            local mouseFocus = GetMouseFocus()
            local overTooltip = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
            local overMark = (mouseFocus == this.originalMark) or (mouseFocus and mouseFocus:GetParent() == this.originalMark)

            if not overTooltip and not overMark then
                this.isVisible = false
                this:Hide()
            end
        end)

        if RaidAssignments.ToolTip.originalMark then
            RaidAssignments.ToolTip.originalMark:SetScript("OnLeave", function()
                -- Check if mouse is actually leaving both the mark AND the tooltip
                local mouseFocus = GetMouseFocus()
                local overMark = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
                local overTooltip = (mouseFocus == RaidAssignments.ToolTip) or (mouseFocus and mouseFocus:GetParent() == RaidAssignments.ToolTip)

                if not overMark and not overTooltip then
                    RaidAssignments.ToolTip.isVisible = false
                    RaidAssignments.ToolTip:Hide()
                end
            end)
        end

        RaidAssignments.ToolTip:SetFrameStrata("DIALOG")

        -- Now create the player frames
        for col = 1, numColumns do
            local startIndex = (col - 1) * playersPerColumn + 1
            local endIndex = math.min(startIndex + playersPerColumn - 1, totalPlayers)

            for i = startIndex, endIndex do
                local name = eligiblePlayers[i]
                local rowIndex = i - startIndex

                RaidAssignments.Frames["ToolTip"][name] = RaidAssignments.Frames["ToolTip"][name] or RaidAssignments:AddToolTipFrame(name, RaidAssignments.ToolTip)
                local frame = RaidAssignments.Frames["ToolTip"][name]
                frame:SetPoint("TOPLEFT", RaidAssignments.ToolTip, "TOPLEFT", (col - 1) * columnWidth + 2, -2 - (25 * rowIndex))
                frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
                frame:Show()
            end
        end

        RaidAssignments.Settings["active"] = n
        RaidAssignments.ToolTip:Show()
    end
end

function RaidAssignments:OpenHealToolTip(frameName)
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        for k, v in pairs(RaidAssignments.Frames["HealToolTip"]) do
            v:Hide()
        end
        local n = tonumber(string.sub(frameName, 2))
        local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
        local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()

        -- Collect eligible players
        local eligiblePlayers = {}
        for i = 1, numMembers do
            local name, class
            if RaidAssignments.TestMode then
                name = roster[i] and roster[i].name
                class = roster[i] and roster[i].class
            else
                name = UnitName("raid"..i)
                class = UnitClass("raid"..i)
            end
            if name and class then
                local f = false
                -- Check if player is already assigned to ANY heal mark (1-12)
                for j = 1, 12 do
                    for k, v in ipairs(RaidAssignments.HealMarks[j]) do
                        if name == v then
                            f = true
                            break
                        end
                    end
                    if f then break end
                end
                if not f and RaidAssignments.RoleFilter.Healer[class] then
                    table.insert(eligiblePlayers, name)
                end
            end
        end

        -- Calculate columns
        local totalPlayers = table.getn(eligiblePlayers)
        if totalPlayers == 0 then return end

        local maxPlayersPerColumn = 10
        local numColumns = math.ceil(totalPlayers / maxPlayersPerColumn)
        local playersPerColumn = math.ceil(totalPlayers / numColumns)
        local actualRows = math.min(playersPerColumn, totalPlayers)

        -- Create columns
        local columnWidth = 80
        local totalWidth = columnWidth * numColumns
        local totalHeight = 25 * actualRows

        -- Set up the tooltip backdrop first
        RaidAssignments.HealToolTip:SetBackdrop({
            bgFile = "Interface/Tooltips/UI-Tooltip-Background",
            edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
            tile = false,
            tileSize = 16,
            edgeSize = 2,
            insets = { left = 1, right = 1, top = 1, bottom = 1 }
        })
        RaidAssignments.HealToolTip:SetBackdropColor(0, 0, 0, 1)
        RaidAssignments.HealToolTip:SetBackdropBorderColor(1, 1, 1, 0.5)
        RaidAssignments.HealToolTip:SetWidth(totalWidth)
        RaidAssignments.HealToolTip:SetHeight(totalHeight)
        
        -- FIX: Use HealToolTip instead of ToolTip for positioning
        local markFrame = _G[frameName]
        if markFrame then
            RaidAssignments.HealToolTip:SetPoint("TOPRIGHT", markFrame, "TOPLEFT", 0, 0)
        else
            RaidAssignments.HealToolTip:Hide()
            return
        end
        
        RaidAssignments.HealToolTip:EnableMouse(true)
        RaidAssignments.HealToolTip:EnableMouseWheel(true)

        -- Store the original mark frame for reference
        RaidAssignments.HealToolTip.originalMark = _G[frameName]
        RaidAssignments.HealToolTip.isVisible = true

        -- Improved mouse handling - only hide when mouse leaves BOTH tooltip AND mark
        RaidAssignments.HealToolTip:SetScript("OnLeave", function()
            -- Check if mouse is actually leaving both the tooltip AND the original mark
            local mouseFocus = GetMouseFocus()
            local overTooltip = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
            local overMark = (mouseFocus == this.originalMark) or (mouseFocus and mouseFocus:GetParent() == this.originalMark)

            if not overTooltip and not overMark then
                this.isVisible = false
                this:Hide()
            end
        end)

        -- Improved OnLeave for the original mark frame
        if RaidAssignments.HealToolTip.originalMark then
            RaidAssignments.HealToolTip.originalMark:SetScript("OnLeave", function()
                -- Check if mouse is actually leaving both the mark AND the tooltip
                local mouseFocus = GetMouseFocus()
                local overMark = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
                local overTooltip = (mouseFocus == RaidAssignments.HealToolTip) or (mouseFocus and mouseFocus:GetParent() == RaidAssignments.HealToolTip)

                if not overMark and not overTooltip then
                    RaidAssignments.HealToolTip.isVisible = false
                    RaidAssignments.HealToolTip:Hide()
                end
            end)
        end

        RaidAssignments.HealToolTip:SetFrameStrata("DIALOG")

        -- Now create the player frames
        for col = 1, numColumns do
            local startIndex = (col - 1) * playersPerColumn + 1
            local endIndex = math.min(startIndex + playersPerColumn - 1, totalPlayers)

            for i = startIndex, endIndex do
                local name = eligiblePlayers[i]
                local rowIndex = i - startIndex

                RaidAssignments.Frames["HealToolTip"][name] = RaidAssignments.Frames["HealToolTip"][name] or RaidAssignments:AddToolTipFrame(name, RaidAssignments.HealToolTip)
                local frame = RaidAssignments.Frames["HealToolTip"][name]
                frame:SetPoint("TOPLEFT", RaidAssignments.HealToolTip, "TOPLEFT", (col - 1) * columnWidth + 2, -2 - (25 * rowIndex))
                frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
                frame:Show()
            end
        end

        RaidAssignments.Settings["active_heal"] = n
        RaidAssignments.HealToolTip:Show()
    end
end

function RaidAssignments:AddTank(name, mark)
    mark = tonumber(mark)

    -- Determine which "category" we're assigning to:
    -- Raid marks (1-8) and curse marks (9-12) are independent pools.
    -- A warlock may appear once in marks 1-8 AND once in marks 9-12.
    local isCurse = (mark >= 9 and mark <= 12)
    local searchStart = isCurse and 9 or 1
    local searchEnd   = isCurse and 12 or 8

    -- Prevent assigning the same player twice within the same category
    for i = searchStart, searchEnd do
        if RaidAssignments.Marks[i] then
            for k, v in pairs(RaidAssignments.Marks[i]) do
                if v == name then
                    -- If clicking the same mark they're already on → remove (toggle)
                    if i == mark then
                        for slot, assignedName in pairs(RaidAssignments.Marks[mark]) do
                            if assignedName == name then
                                RaidAssignments.Marks[mark][slot] = nil
                                if RaidAssignments.Frames[mark][name] then
                                    RaidAssignments.Frames[mark][name]:Hide()
                                    RaidAssignments.Frames[mark][name] = nil
                                end
                                RaidAssignments:UpdateTanks()
                                RaidAssignments:SendTanks()
                                return
                            end
                        end
                    end
                    -- Already assigned somewhere else in this category → block
                    return
                end
            end
        end
    end

    if not RaidAssignments.Marks[mark] then
        RaidAssignments.Marks[mark] = {}
    end

    -- Curse marks (9-12): limit to 1 warlock per curse type
    if isCurse then
        local count = 0
        for k, v in pairs(RaidAssignments.Marks[mark]) do
            if v then count = count + 1 end
        end
        if count >= 1 then
            return
        end
    end

    -- Find the next available slot
    local maxSlots = isCurse and 1 or 4
    local index = nil
    for slot = 1, maxSlots do
        if not RaidAssignments.Marks[mark][slot] then
            index = slot
            break
        end
    end

    if not index then return end

    local unit = RaidAssignments:GetRaidID(name)
    local class = RaidAssignments.TestMode and RaidAssignments:GetTestClass(name) or UnitClass(unit)

    RaidAssignments.Frames[mark][name] = RaidAssignments.Frames[mark][name] or RaidAssignments:AddTankFrame(name, mark)
    local frame = RaidAssignments.Frames[mark][name]
    frame:SetPoint("RIGHT", 5 + (85 * index), 0)
    frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
    frame:Show()

    if RaidAssignments:CanAssignToMark(mark, name) then
        RaidAssignments.Marks[mark][index] = name
        RaidAssignments:SendTanks()
    end
end

function RaidAssignments:AddHeal(name, mark)
    mark = tonumber(mark)

    -- Prevent assigning the same healer twice in the same mark (check all 6 slots)
    for i = 1, 6 do  -- Changed from 4 to 6
        if RaidAssignments.HealMarks[mark][i] == name then
            return
        end
    end

    local slot = nil
    -- Find first empty slot (check all 6 slots)
    for i = 1, 6 do  -- Changed from 4 to 6
        if not RaidAssignments.HealMarks[mark][i] then
            slot = i
            break
        end
    end

    if slot then
        RaidAssignments.HealFrames[mark][name] = RaidAssignments.HealFrames[mark][name] or RaidAssignments:AddHealFrame(name, mark)
        local frame = RaidAssignments.HealFrames[mark][name]
        local unit = RaidAssignments:GetRaidID(name)
        frame:SetPoint("RIGHT", 5 + (85 * slot), 0)
        frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
        frame:Show()
        RaidAssignments.HealMarks[mark][slot] = name
    end
end

function RaidAssignments:AddGeneral(name, mark)
    mark = tonumber(mark)

    -- Ensure the mark exists in the table
    if not RaidAssignments.GeneralMarks[mark] then
        RaidAssignments.GeneralMarks[mark] = {}
    end

    -- Prevent assigning the same player to ANY general mark (1-10)
    for i = 1, 10 do
        if RaidAssignments.GeneralMarks[i] then
            for _, v in pairs(RaidAssignments.GeneralMarks[i]) do
                if v == name then
                    return
                end
            end
        end
    end

    -- Find the first available slot
    local slot = nil
    local maxSlots = (mark >= 9 and mark <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
    for i = 1, maxSlots do
        if not RaidAssignments.GeneralMarks[mark][i] then
            slot = i
            break
        end
    end

    if slot then
        RaidAssignments.GeneralFrames[mark][name] = RaidAssignments.GeneralFrames[mark][name] or RaidAssignments:AddGeneralFrame(name, mark)
        local frame = RaidAssignments.GeneralFrames[mark][name]
        frame:SetPoint("RIGHT", 5 + (85 * slot), 0)
        frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
        frame:Show()
        RaidAssignments.GeneralMarks[mark][slot] = name

        -- Send updates
        RaidAssignments:SendGeneral()
    end
end

function RaidAssignments:AddToolTipFrame(name, tooltip)
    local unit = RaidAssignments:GetRaidID(name)
    local frame = CreateFrame("Button", name, tooltip)
    local backdrop = {
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        tile = false,
        tileSize = 8,
        edgeSize = 4,
        insets = { left = 2, right = 2, top = 0, bottom = 0 }
    }

    frame:SetWidth(80)
    frame:SetHeight(25)
    frame:SetBackdrop(backdrop)
    frame:SetBackdropColor(0, 0, 0, 0)

    frame.texture = frame:CreateTexture(nil, "ARTWORK")
    frame.texture:SetWidth(frame:GetWidth() - 4)  -- This will automatically adjust to 76
    frame.texture:SetHeight(24)
    frame.texture:SetPoint("TOPLEFT", 2, -1)
    frame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\LiteStep")
    frame.texture:SetGradientAlpha("VERTICAL", 1, 1, 1, 0, 1, 1, 1, 1)

    frame.name = frame:CreateFontString(nil, "OVERLAY")
    frame.name:SetPoint("CENTER", 0, 0)
    frame.name:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 12)
    frame.name:SetTextColor(1, 1, 1, 1)
    frame.name:SetShadowOffset(1, -1)
    frame.name:SetText(name)

    -- In the AddToolTipFrame function, update the OnClick script:
	frame:SetScript("OnClick", function()
		if IsRaidOfficer("player") then
			this:Hide()
			if tooltip == RaidAssignments.ToolTip then
				RaidAssignments:AddTank(this:GetName(), RaidAssignments.Settings["active"])
				RaidAssignments:OpenToolTip("T"..RaidAssignments.Settings["active"])
				RaidAssignments:SendTanks()
			elseif tooltip == RaidAssignments.HealToolTip then
				RaidAssignments:AddHeal(this:GetName(), RaidAssignments.Settings["active_heal"])
				RaidAssignments:OpenHealToolTip("H"..RaidAssignments.Settings["active_heal"])
				RaidAssignments:SendHeals()
			elseif tooltip == RaidAssignments.GeneralToolTip then
				RaidAssignments:AddGeneral(this:GetName(), RaidAssignments.Settings["active_general"])
				RaidAssignments:OpenGeneralToolTip("G"..RaidAssignments.Settings["active_general"])
				RaidAssignments:SendGeneral()
			end
		end
	end)
    frame.unit = unit
    frame:SetScript("OnEnter", UnitFrame_OnEnter)
    frame:SetScript("OnLeave", UnitFrame_OnLeave)
    return frame
end

function RaidAssignments:AddTankFrame(name, mark)
    local unit = RaidAssignments:GetRaidID(name)
    local frame = CreateFrame("Button", mark..name, RaidAssignments.bg)
    local backdrop = {
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        tile = false,
        tileSize = 8,
        edgeSize = 4,
        insets = { left = 2, right = 2, top = 0, bottom = 0 }
    }
    frame:SetParent("T"..mark)
    frame:SetWidth(80)
    frame:SetHeight(25)

    -- hpbar without portrait gap
    frame.hpbar = CreateFrame("Button", nil, frame)
    frame.hpbar:SetWidth(frame:GetWidth() - 4)
    frame.hpbar:SetHeight(24)
    frame.hpbar:SetPoint("TOPLEFT", 2, -1)
    frame.hpbar:SetFrameLevel(1)

    frame.texture = frame.hpbar:CreateTexture(nil, "ARTWORK")
    frame.texture:SetWidth(frame:GetWidth() - 4)
    frame.texture:SetHeight(24)
    frame.texture:SetPoint("TOPLEFT", 0, 0)
    frame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\LiteStep")
    frame.texture:SetGradientAlpha("VERTICAL", 1, 1, 1, 0, 1, 1, 1, 1)

    frame.name = frame.hpbar:CreateFontString(nil, "OVERLAY")
    frame.name:SetPoint("CENTER", 0, 0)
    frame.name:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 12)
    frame.name:SetTextColor(1, 1, 1, 1)
    frame.name:SetShadowOffset(1, -1)
    frame.name:SetText(name)

	frame:SetScript("OnClick", function()
		if IsRaidOfficer("player") then
			-- Remove from tank assignments
			for k, v in pairs(RaidAssignments.Marks[mark]) do
				if v == name then
					RaidAssignments.Marks[mark][k] = nil
					this:Hide()
					RaidAssignments.Frames[mark][name] = nil
					RaidAssignments:UpdateTanks()
					RaidAssignments:SendTanks()
					break
				end
			end
		end
	end)
    frame.unit = unit
    frame:SetScript("OnEnter", UnitFrame_OnEnter)
    frame:SetScript("OnLeave", UnitFrame_OnLeave)
    return frame
end

function RaidAssignments:AddHealFrame(name, mark)
    local unit = RaidAssignments:GetRaidID(name)
    local frame = CreateFrame("Button", "H"..mark..name, RaidAssignments.bg)
    local backdrop = {
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        tile = false,
        tileSize = 8,
        edgeSize = 4,
        insets = { left = 2, right = 2, top = 0, bottom = 0 }
    }
    frame:SetParent("H"..mark)
    frame:SetWidth(80)
    frame:SetHeight(25)

    frame.hpbar = CreateFrame("Button", nil, frame)
    frame.hpbar:SetWidth(frame:GetWidth() - 4)
    frame.hpbar:SetHeight(24)
    frame.hpbar:SetPoint("TOPLEFT", 2, -1)
    frame.hpbar:SetFrameLevel(1)

    frame.texture = frame.hpbar:CreateTexture(nil, "ARTWORK")
    frame.texture:SetWidth(frame:GetWidth() - 4)
    frame.texture:SetHeight(24)
    frame.texture:SetPoint("TOPLEFT", 0, 0)
    frame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\LiteStep")
    frame.texture:SetGradientAlpha("VERTICAL", 1, 1, 1, 0, 1, 1, 1, 1)

    frame.name = frame.hpbar:CreateFontString(nil, "OVERLAY")
    frame.name:SetPoint("CENTER", 0, 0)
    frame.name:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 12)
    frame.name:SetTextColor(1, 1, 1, 1)
    frame.name:SetShadowOffset(1, -1)
    frame.name:SetText(name)

	frame:SetScript("OnClick", function()
		if IsRaidOfficer("player") then
			for k = 1, 6 do  -- Changed from 4 to 6
				if RaidAssignments.HealMarks[mark][k] == name then
					RaidAssignments.HealMarks[mark][k] = nil
					this:Hide()
					RaidAssignments.HealFrames[mark][name] = nil -- clear cached frame
					RaidAssignments:UpdateHeals()
					RaidAssignments:SendHeals()  -- Make sure to send updates
					break
				end
			end
		end
	end)

    frame.unit = unit
    frame:SetScript("OnEnter", UnitFrame_OnEnter)
    frame:SetScript("OnLeave", UnitFrame_OnLeave)
    return frame
end

function RaidAssignments:AddGeneralFrame(name, mark)
    local unit = RaidAssignments:GetRaidID(name)
    local frame = CreateFrame("Button", mark..name, RaidAssignments.generalBg)
    local backdrop = {
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        tile = false,
        tileSize = 8,
        edgeSize = 4,
        insets = { left = 2, right = 2, top = 0, bottom = 0 }
    }
    frame:SetParent("G"..mark)
    frame:SetWidth(80)
    frame:SetHeight(25)

    -- hpbar without portrait gap
    frame.hpbar = CreateFrame("Button", nil, frame)
    frame.hpbar:SetWidth(frame:GetWidth() - 4)
    frame.hpbar:SetHeight(24)
    frame.hpbar:SetPoint("TOPLEFT", 2, -1)
    frame.hpbar:SetFrameLevel(1)

    frame.texture = frame.hpbar:CreateTexture(nil, "ARTWORK")
    frame.texture:SetWidth(frame:GetWidth() - 4)
    frame.texture:SetHeight(24)
    frame.texture:SetPoint("TOPLEFT", 0, 0)
    frame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\LiteStep")
    frame.texture:SetGradientAlpha("VERTICAL", 1, 1, 1, 0, 1, 1, 1, 1)

    frame.name = frame.hpbar:CreateFontString(nil, "OVERLAY")
    frame.name:SetPoint("CENTER", 0, 0)
    frame.name:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 12)
    frame.name:SetTextColor(1, 1, 1, 1)
    frame.name:SetShadowOffset(1, -1)
    frame.name:SetText(name)

    -- FIXED: Correct OnClick script to remove players from general assignments
    frame:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            -- Remove from general assignments
            local maxSlots = (mark >= 9 and mark <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
            for k = 1, maxSlots do
                if RaidAssignments.GeneralMarks[mark] and RaidAssignments.GeneralMarks[mark][k] == name then
                    RaidAssignments.GeneralMarks[mark][k] = nil
                    this:Hide()
                    RaidAssignments.GeneralFrames[mark][name] = nil -- clear cached frame
                    RaidAssignments:UpdateGeneral()
                    RaidAssignments:SendGeneral()
                    break
                end
            end
        end
    end)

    frame.unit = unit
    frame:SetScript("OnEnter", UnitFrame_OnEnter)
    frame:SetScript("OnLeave", UnitFrame_OnLeave)
    return frame
end

function RaidAssignments:PostAssignments()
    local chan = "RAID" -- Default to RAID channel
    local chanNum = nil
    local n = false

    if RaidAssignments_Settings["usecolors"] then
        -- Tanks
        for i = 1, 8 do
            if RaidAssignments.Marks[i] ~= nil and table.getn(RaidAssignments.Marks[i]) ~= 0 then
                n = true
            end
        end
        if n then
            SendChatMessage("-- Tank Assignments --", chan, nil, chanNum)
            local i = 8
            while i > 0 do
                local text = RaidAssignments:GetClassColors(RaidAssignments.RealMarks[i], "mark")
                if table.getn(RaidAssignments.Marks[i]) ~= 0 then
                    for k, v in pairs(RaidAssignments.Marks[i]) do
                        if k == 1 then
                            text = text .. ": " .. RaidAssignments:GetClassColors(v, "cff")
                        else
                            text = text .. ", " .. RaidAssignments:GetClassColors(v, "cff")
                        end
                        if k == table.getn(RaidAssignments.Marks[i]) then
                            text = text .. "."
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end

        -- Curses
        n = false
        for i = 9, 12 do
            if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
                n = true
                break
            end
        end
        if n then
            SendChatMessage("-- Curse Assignments --", chan, nil, chanNum)
            for i = 9, 12 do
                if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
                    local curseName = RaidAssignments.WarlockMarks[i] and RaidAssignments.WarlockMarks[i].name or "Unknown Curse"
                    local text = curseName .. ": "
                    
                    for k, v in pairs(RaidAssignments.Marks[i]) do
                        if k == 1 then
                            text = text .. RaidAssignments:GetClassColors(v, "cff")
                        else
                            text = text .. ", " .. RaidAssignments:GetClassColors(v, "cff")
                        end
                    end
                    text = text .. "."
                    SendChatMessage(text, chan, nil, chanNum)
                end
            end
        end

        -- Heals
        n = false
        for i = 1, 12 do
            for k = 1, 4 do
                if RaidAssignments.HealMarks[i][k] then
                    n = true
                    break
                end
            end
        end
        if n then
            SendChatMessage("-- Heal Assignments --", chan, nil, chanNum)
            local i = 12
            while i > 0 do
                local text = RaidAssignments.HealRealMarks[i]
                local hasHealers = false
                for k = 1, 4 do
                    if RaidAssignments.HealMarks[i][k] then
                        hasHealers = true
                        break
                    end
                end
                if hasHealers then
                    text = text .. ": "
                    for k = 1, 4 do
                        local v = RaidAssignments.HealMarks[i][k]
                        if v then
                            text = text .. "(" .. k .. ") " .. RaidAssignments:GetClassColors(v, "cff")
                            local hasMore = false
                            for m = k + 1, 4 do
                                if RaidAssignments.HealMarks[i][m] then
                                    hasMore = true
                                    break
                                end
                            end
                            if hasMore then
                                text = text .. ", "
                            else
                                text = text .. "."
                            end
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end

    else
        -- Tanks
        for i = 1, 8 do
            if RaidAssignments.Marks[i] ~= nil and table.getn(RaidAssignments.Marks[i]) ~= 0 then
                n = true
            end
        end
        if n then
            SendChatMessage("-- Tank Assignments --", chan, nil, chanNum)
            local i = 8
            while i > 0 do
                local text = RaidAssignments.RealMarks[i]
                if table.getn(RaidAssignments.Marks[i]) ~= 0 then
                    for k, v in pairs(RaidAssignments.Marks[i]) do
                        if k == 1 then
                            text = text .. ": " .. v
                        else
                            text = text .. ", " .. v
                        end
                        if k == table.getn(RaidAssignments.Marks[i]) then
                            text = text .. "."
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end

        -- Curses
        n = false
        for i = 9, 12 do
            if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
                n = true
                break
            end
        end
        if n then
            SendChatMessage("-- Curse Assignments --", chan, nil, chanNum)
            for i = 9, 12 do
                if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
                    local curseName = RaidAssignments.WarlockMarks[i] and RaidAssignments.WarlockMarks[i].name or "Unknown Curse"
                    local text = curseName .. ": "
                    
                    for k, v in pairs(RaidAssignments.Marks[i]) do
                        if k == 1 then
                            text = text .. v
                        else
                            text = text .. ", " .. v
                        end
                    end
                    text = text .. "."
                    SendChatMessage(text, chan, nil, chanNum)
                end
            end
        end

        -- Heals
        n = false
        for i = 1, 12 do
            for k = 1, 4 do
                if RaidAssignments.HealMarks[i][k] then
                    n = true
                    break
                end
            end
        end
        if n then
            SendChatMessage("-- Heal Assignments --", chan, nil, chanNum)
            local i = 12
            while i > 0 do
                local text = RaidAssignments.HealRealMarks[i]
                local hasHealers = false
                for k = 1, 4 do
                    if RaidAssignments.HealMarks[i][k] then
                        hasHealers = true
                        break
                    end
                end
                if hasHealers then
                    text = text .. ": "
                    for k = 1, 4 do
                        local v = RaidAssignments.HealMarks[i][k]
                        if v then
                            text = text .. "(" .. k .. ") " .. v
                            local hasMore = false
                            for m = k + 1, 4 do
                                if RaidAssignments.HealMarks[i][m] then
                                    hasMore = true
                                    break
                                end
                            end
                            if hasMore then
                                text = text .. ", "
                            else
                                text = text .. "."
                            end
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end
    end
    if RaidAssignments_Settings["useWhisper"] then
        self:WhisperAssignments()
    end
end

function RaidAssignments:GenerateTestRoster()
    RaidAssignments.TestRoster = {}
    local classes = {"Warrior", "Warlock", "Rogue", "Priest", "Mage", "Hunter", "Druid", "Paladin", "Shaman"}
    local names = {
        "Abelius", "Arboldemango", "Azzer", "Bestigor", "Bigbron", "Bombardero", "Calogero", "Catu",
        "Culin", "Dardork", "Darez", "Dragovar", "Durotavich", "Edeax", "Elcucho", "Eisla",
        "Gulolio", "Hecryp", "Hezpar", "Hoplite", "Kukarda", "Lokyu", "Ndree", "Neneta",
        "Neralone", "Ocuspocuss", "Onrul", "Palawhite", "Pandamonium", "Pimienta", "Pokker", "Fionna",
        "Selner", "Sinnergia", "Tankita", "Teletubbiei", "Uburrka", "Xanty", "Xposed", "Zeroxkg"
    }
    for i = 1, 40 do
        local class = classes[math.mod(i - 1, 9) + 1] -- Distribute classes evenly
        local name = names[i] -- Use name from the pool
        table.insert(RaidAssignments.TestRoster, {
            name = name,
            class = class
        })
    end
end

function RaidAssignments:GetTestClass(name)
    for _, unit in pairs(RaidAssignments.TestRoster) do
        if unit.name == name then
            return unit.class
        end
    end
    return nil
end

function RaidAssignments:ToggleTestMode()
    if not RaidAssignments.TestMode then
        RaidAssignments.TestMode = true
        RaidAssignments:GenerateTestRoster()
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Test mode enabled with 40 dummy players")
    else
        RaidAssignments.TestMode = false
        RaidAssignments.TestRoster = {}
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Test mode disabled")
    end
    RaidAssignments:UpdateTanks()
    RaidAssignments:UpdateHeals()
    RaidAssignments:UpdateGeneral()
end

function RaidAssignments:Slash(arg1)
	if arg1 == nil or arg1 == "" then
		if RaidAssignments:IsVisible() then
			RaidAssignments.ToolTip:Hide()
			RaidAssignments.HealToolTip:Hide()
			RaidAssignments.Settings["Animation"] = true
			RaidAssignments.Settings["MainFrame"] = false
		else
			RaidAssignments.Settings["Animation"] = false
			RaidAssignments.Settings["MainFrame"] = false
			RaidAssignments.Settings["SizeX"] = 0
			RaidAssignments.Settings["SizeY"] = 0
			RaidAssignments:Show()
		end
	elseif arg1 == "test" then
		RaidAssignments:ToggleTestMode()
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Unknown command. Use /ta, or /ta test")
	end
end

SLASH_TA1, SLASH_TA2 = "/ta", "/tanksassignments"
function SlashCmdList.TA(msg, editbox)
	RaidAssignments:Slash(msg)
end

RaidAssignments:SetScript("OnEvent", RaidAssignments.OnEvent)

function RaidAssignments:Debug()
	for k, v in pairs(RaidAssignments.Marks) do
		for i, name in pairs(RaidAssignments.Marks[k]) do
			DEFAULT_CHAT_FRAME:AddMessage(k..": "..i.." - "..name)
		end
	end
end

function RaidAssignments:PostRaidAssignments()
    local chan = "RAID"
    local chanNum = nil
    local n = false

    if RaidAssignments_Settings["usecolors"] then
        -- Tanks
        for i = 1, 8 do
            if RaidAssignments.Marks[i] ~= nil and table.getn(RaidAssignments.Marks[i]) ~= 0 then
                n = true
            end
        end
        if n then
            SendChatMessage("-- Tank Assignments --", chan, nil, chanNum)
            local i = 8
            while i > 0 do
                local text = RaidAssignments:GetClassColors(RaidAssignments.RealMarks[i], "mark")
                if table.getn(RaidAssignments.Marks[i]) ~= 0 then
                    for k, v in pairs(RaidAssignments.Marks[i]) do
                        if k == 1 then
                            text = text .. ": " .. RaidAssignments:GetClassColors(v, "cff")
                        else
                            text = text .. ", " .. RaidAssignments:GetClassColors(v, "cff")
                        end
                        if k == table.getn(RaidAssignments.Marks[i]) then
                            text = text .. "."
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end
    else
        -- Tanks (no colors)
        for i = 1, 8 do
            if RaidAssignments.Marks[i] ~= nil and table.getn(RaidAssignments.Marks[i]) ~= 0 then
                n = true
            end
        end
        if n then
            SendChatMessage("-- Tank Assignments --", chan, nil, chanNum)
            local i = 8
            while i > 0 do
                local text = RaidAssignments.RealMarks[i]
                if table.getn(RaidAssignments.Marks[i]) ~= 0 then
                    for k, v in pairs(RaidAssignments.Marks[i]) do
                        if k == 1 then
                            text = text .. ": " .. v
                        else
                            text = text .. ", " .. v
                        end
                        if k == table.getn(RaidAssignments.Marks[i]) then
                            text = text .. "."
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end
    end
    if RaidAssignments_Settings["useWhisper"] then
        for i = 1, 8 do
            for k, v in pairs(RaidAssignments.Marks[i]) do
                if RaidAssignments:IsInRaid(v) then
                    local text = "You are assigned to tank " .. RaidAssignments.RealMarks[i] .. " (slot " .. k .. ")"
                    SendChatMessage(text, "WHISPER", nil, v)
                end
            end
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Whispered tank assignments to players")
    end
end

function RaidAssignments:PostHealAssignments()
    local chan = "RAID"
    local chanNum = nil
    local n = false

    if RaidAssignments_Settings["usecolors"] then
        -- Heals
        for i = 1, 12 do
            for k = 1, 6 do
                if RaidAssignments.HealMarks[i][k] then
                    n = true
                    break
                end
            end
        end
        if n then
            SendChatMessage("-- Heal Assignments --", chan, nil, chanNum)
            local i = 12
            while i > 0 do
                local text = RaidAssignments.HealRealMarks[i]
                local hasHealers = false
                for k = 1, 6 do
                    if RaidAssignments.HealMarks[i][k] then
                        hasHealers = true
                        break
                    end
                end
                if hasHealers then
                    text = text .. ": "
                    for k = 1, 6 do
                        local v = RaidAssignments.HealMarks[i][k]
                        if v then
                            text = text .. "(" .. k .. ") " .. RaidAssignments:GetClassColors(v, "cff")
                            local hasMore = false
                            for m = k + 1, 6 do
                                if RaidAssignments.HealMarks[i][m] then
                                    hasMore = true
                                    break
                                end
                            end
                            if hasMore then
                                text = text .. ", "
                            else
                                text = text .. "."
                            end
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end
    else
        -- Heals (no colors)
        for i = 1, 12 do
            for k = 1, 6 do
                if RaidAssignments.HealMarks[i][k] then
                    n = true
                    break
                end
            end
        end
        if n then
            SendChatMessage("-- Heal Assignments --", chan, nil, chanNum)
            local i = 12
            while i > 0 do
                local text = RaidAssignments.HealRealMarks[i]
                local hasHealers = false
                for k = 1, 6 do
                    if RaidAssignments.HealMarks[i][k] then
                        hasHealers = true
                        break
                    end
                end
                if hasHealers then
                    text = text .. ": "
                    for k = 1, 6 do
                        local v = RaidAssignments.HealMarks[i][k]
                        if v then
                            text = text .. "(" .. k .. ") " .. v
                            local hasMore = false
                            for m = k + 1, 6 do
                                if RaidAssignments.HealMarks[i][m] then
                                    hasMore = true
                                    break
                                end
                            end
                            if hasMore then
                                text = text .. ", "
                            else
                                text = text .. "."
                            end
                        end
                    end
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i - 1
            end
        end
    end
    if RaidAssignments_Settings["useWhisper"] then
        for i = 1, 12 do
            for k = 1, 6 do
                local v = RaidAssignments.HealMarks[i][k]
                if v and RaidAssignments:IsInRaid(v) then
                    local text = "You are assigned to heal " .. RaidAssignments.HealRealMarks[i] .. " (slot " .. k .. ")"
                    SendChatMessage(text, "WHISPER", nil, v)
                end
            end
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Whispered heal assignments to players")
    end
end

function RaidAssignments:PostGeneralAssignments()
    local chan = "RAID"
    local chanNum = nil
    local n = false

    if RaidAssignments_Settings["usecolors"] then
        for i = 1, 10 do
            if RaidAssignments.GeneralMarks[i] ~= nil then
                local hasAssignments = false
                local maxSlots = (i >= 9 and i <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
                for k = 1, maxSlots do
                    if RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k] then
                        hasAssignments = true
                        n = true
                        break
                    end
                end
            end
        end
        if n then
            SendChatMessage("-- General Assignments --", chan, nil, chanNum)
            local i = 1
            while i <= 10 do
                local maxSlots = (i >= 9 and i <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
                local hasAssignments = false
                for k = 1, maxSlots do
                    if RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k] then
                        hasAssignments = true
                        break
                    end
                end

                if hasAssignments then
                    -- Get the mark text from the input box for custom marks, or use predefined names
                    local markText = RaidAssignments.GeneralRealMarks[i]
                    if i >= 9 then
                        -- For custom marks 9 and 10, get the text from the EditBox
                        local editBox = _G["G"..i.."_Edit"]
                        if editBox then
                            local editText = editBox:GetText()
                            if editText and editText ~= "" then
                                markText = editText
                            else
                                markText = "Custom Mark " .. (i - 8)
                            end
                        else
                            markText = "Custom Mark " .. (i - 8)
                        end
                    end

                    local text = markText .. ": "
                    local first = true
                    for k = 1, maxSlots do
                        local v = RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k]
                        if v then
                            if not first then
                                text = text .. ", "
                            end
                            text = text .. RaidAssignments:GetClassColors(v, "cff")
                            first = false
                        end
                    end
                    text = text .. "."
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i + 1
            end
        end
    else
        for i = 1, 10 do
            if RaidAssignments.GeneralMarks[i] ~= nil then
                local hasAssignments = false
                local maxSlots = (i >= 9 and i <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
                for k = 1, maxSlots do
                    if RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k] then
                        hasAssignments = true
                        n = true
                        break
                    end
                end
            end
        end
        if n then
            SendChatMessage("-- General Assignments --", chan, nil, chanNum)
            local i = 1
            while i <= 10 do
                local maxSlots = (i >= 9 and i <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
                local hasAssignments = false
                for k = 1, maxSlots do
                    if RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k] then
                        hasAssignments = true
                        break
                    end
                end

                if hasAssignments then
                    -- Get the mark text from the input box for custom marks, or use predefined names
                    local markText = RaidAssignments.GeneralRealMarks[i]
                    if i >= 9 then
                        -- For custom marks 9 and 10, get the text from the EditBox
                        local editBox = _G["G"..i.."_Edit"]
                        if editBox then
                            local editText = editBox:GetText()
                            if editText and editText ~= "" then
                                markText = editText
                            else
                                markText = "Custom Mark " .. (i - 8)
                            end
                        else
                            markText = "Custom Mark " .. (i - 8)
                        end
                    end

                    local text = markText .. ": "
                    local first = true
                    for k = 1, maxSlots do
                        local v = RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k]
                        if v then
                            if not first then
                                text = text .. ", "
                            end
                            text = text .. v
                            first = false
                        end
                    end
                    text = text .. "."
                    SendChatMessage(text, chan, nil, chanNum)
                end
                i = i + 1
            end
        end
    end
    if RaidAssignments_Settings["useWhisper"] then
        for i = 1, 10 do
            local maxSlots = (i >= 9 and i <= 10) and 7 or 5  -- 7 slots for custom marks 9-10, 5 for others
            for k = 1, maxSlots do
                local v = RaidAssignments.GeneralMarks[i] and RaidAssignments.GeneralMarks[i][k]
                if v and RaidAssignments:IsInRaid(v) then
                    -- Get the mark text from the input box for custom marks, or use predefined names
                    local markText = RaidAssignments.GeneralRealMarks[i]
                    if i >= 9 then
                        -- For custom marks 9 and 10, get the text from the EditBox
                        local editBox = _G["G"..i.."_Edit"]
                        if editBox then
                            local editText = editBox:GetText()
                            if editText and editText ~= "" then
                                markText = editText
                            else
                                markText = "Custom Mark " .. (i - 8)
                            end
                        else
                            markText = "Custom Mark " .. (i - 8)
                        end
                    end
                    local text = "You are assigned to " .. markText .. " (slot " .. k .. ")"
                    SendChatMessage(text, "WHISPER", nil, v)
                end
            end
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 2.0|r: Whispered general assignments to players")
    end
end

function RaidAssignments:SendCustomMarkLabels()
    if IsRaidOfficer("player") then
        local sendstring = ""
        for i = 9, 10 do
            local label = RaidAssignments.GeneralRealMarks[i] or ""
            -- Use simple format without pipe characters
            sendstring = sendstring .. i .. "_" .. label .. ","
        end
        SendAddonMessage("RaidAssignmentsCustomLabels", sendstring, "RAID")
    end
end

function RaidAssignments:PostCurses()
    if not IsRaidOfficer("player") then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 3.0|r: You must be a raid officer to post curse assignments")
        return
    end

    local chan = "RAID"
    local chanNum = nil
    local hasCurses = false

    -- Check if there are any curse assignments
    for i = 9, 12 do
        if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
            hasCurses = true
            break
        end
    end

    if not hasCurses then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 3.0|r: No curse assignments to post")
        return
    end

    if RaidAssignments_Settings["usecolors"] then
        SendChatMessage("-- Curse Assignments --", chan, nil, chanNum)
        for i = 9, 12 do
            if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
                local curseName = RaidAssignments.WarlockMarks[i] and RaidAssignments.WarlockMarks[i].name or "Unknown Curse"
                local text = curseName .. ": "

                for k, v in pairs(RaidAssignments.Marks[i]) do
                    if k == 1 then
                        text = text .. RaidAssignments:GetClassColors(v, "cff")
                    else
                        text = text .. ", " .. RaidAssignments:GetClassColors(v, "cff")
                    end
                end
                text = text .. "."
                SendChatMessage(text, chan, nil, chanNum)
            end
        end
    else
        SendChatMessage("-- Curse Assignments --", chan, nil, chanNum)
        for i = 9, 12 do
            if RaidAssignments.Marks[i] and table.getn(RaidAssignments.Marks[i]) > 0 then
                local curseName = RaidAssignments.WarlockMarks[i] and RaidAssignments.WarlockMarks[i].name or "Unknown Curse"
                local text = curseName .. ": "

                for k, v in pairs(RaidAssignments.Marks[i]) do
                    if k == 1 then
                        text = text .. v
                    else
                        text = text .. ", " .. v
                    end
                end
                text = text .. "."
                SendChatMessage(text, chan, nil, chanNum)
            end
        end
    end

    -- Also whisper individual assignments if enabled
    if RaidAssignments_Settings["useWhisper"] then
        for i = 9, 12 do
            for k, v in pairs(RaidAssignments.Marks[i]) do
                if RaidAssignments:IsInRaid(v) then
                    local curseName = RaidAssignments.WarlockMarks[i] and RaidAssignments.WarlockMarks[i].name or "Unknown Curse"
                    local text = "You are assigned to " .. curseName .. " (slot " .. k .. ")"
                    SendChatMessage(text, "WHISPER", nil, v)
                end
            end
        end
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 3.0|r: Whispered curse assignments to players")
    end

end

--  Custom Assignments Extension (8 Independent Windows)

RaidAssignments.CustomMarks = RaidAssignments.CustomMarks or {}
RaidAssignments.CustomRealMarks = RaidAssignments.CustomRealMarks or {}
RaidAssignments.CustomFrames = RaidAssignments.CustomFrames or {}

for i = 1, 8 do
    RaidAssignments.CustomMarks[i] = RaidAssignments.CustomMarks[i] or {}
    for m = 1, 10 do
        RaidAssignments.CustomMarks[i][m] = RaidAssignments.CustomMarks[i][m] or {}
    end
    RaidAssignments.CustomRealMarks[i] = RaidAssignments.CustomRealMarks[i] or {}
    for m = 1, 8 do
        RaidAssignments.CustomRealMarks[i][m] = RaidAssignments.RealMarks[m] or ("Mark "..m)
    end
    RaidAssignments.CustomRealMarks[i][9] = RaidAssignments.CustomRealMarks[i][9] or ""
    RaidAssignments.CustomRealMarks[i][10] = RaidAssignments.CustomRealMarks[i][10] or ""
    RaidAssignments.CustomFrames[i] = RaidAssignments.CustomFrames[i] or {}
end

-- Sync
function RaidAssignments:SendCustom(i)
    if not IsRaidOfficer("player") then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: You must be raid leader/assistant to sync custom assignments")
        return
    end

    -- Check if there are any assignments before syncing
    local hasAssignments = false
    for mark = 1, 10 do
        local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
        for slot = 1, maxSlots do
            if RaidAssignments.CustomMarks[i] and
               RaidAssignments.CustomMarks[i][mark] and
               RaidAssignments.CustomMarks[i][mark][slot] then
                hasAssignments = true
                break
            end
        end
        if hasAssignments then break end
    end

    if not hasAssignments then
        -- Don't sync empty assignments
        return
    end

    -- Ensure data structures exist
    RaidAssignments.CustomMarks[i] = RaidAssignments.CustomMarks[i] or {}

    -- Check what we're about to send
    DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E DEBUG|r: Sending custom " .. i .. " data...")

    -- Send assignments
    local out = ""
    local assignmentCount = 0
    for mark = 1, 10 do
        local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
        RaidAssignments.CustomMarks[i][mark] = RaidAssignments.CustomMarks[i][mark] or {}

        for slot = 1, maxSlots do
            local name = RaidAssignments.CustomMarks[i][mark][slot]
            if name and name ~= "" then
                out = out .. tostring(mark) .. "_" .. tostring(slot) .. "_" .. name .. ","
                assignmentCount = assignmentCount + 1
            end
        end
    end

    -- Show what we're sending
    DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E DEBUG|r: Assignment count: " .. assignmentCount)
    DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E DEBUG|r: Data length: " .. string.len(out))
    if string.len(out) > 100 then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E DEBUG|r: First 100 chars: " .. string.sub(out, 1, 100))
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E DEBUG|r: Data: " .. out)
    end

    SendAddonMessage("RaidAssignmentsCustomMarks"..tostring(i), out, "RAID")

    -- Sync the window title
    self:SendCustomWindowTitle(i)

    -- Sync custom labels
    self:SendCustomLabels(i)

    DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: Custom assignments " .. i .. " synced to raid (" .. assignmentCount .. " assignments)")
end

function RaidAssignments:SendCustomLabels(i)
    if not IsRaidOfficer("player") then return end

    RaidAssignments.CustomRealMarks[i] = RaidAssignments.CustomRealMarks[i] or {}
    local label9 = RaidAssignments.CustomRealMarks[i][9] or "Custom 1"
    local label10 = RaidAssignments.CustomRealMarks[i][10] or "Custom 2"

    local out = "9_" .. label9 .. ",10_" .. label10 .. ","
    SendAddonMessage("RaidAssignmentsCustomLabels"..tostring(i), out, "RAID")
end

function RaidAssignments:PostCustomAssignments(i)
    if not IsRaidOfficer("player") then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 3.0|r: You must be a raid officer to post custom assignments")
        return
    end

    local chan = "RAID"
    local chanNum = nil
    local hasAssignments = false

    local markColors = {
        [1] = "|cffffff00", -- Star: Yellow
        [2] = "|cffffa500", -- Circle: Orange
        [3] = "|cffa100a5", -- Diamond: Purple
        [4] = "|cff00ff00", -- Triangle: Green
        [5] = "|cffd3d3d3", -- Moon: Light Gray
        [6] = "|cff0000ff", -- Square: Blue
        [7] = "|cffff0000", -- Cross: Red
        [8] = "|cffffffff", -- Skull: White
        [9] = "|cffd3d3d3", -- Custom 1: Light Gray
        [10] = "|cffd3d3d3" -- Custom 2: Light Gray
    }

    for mark = 1, 10 do
        local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
        for slot = 1, maxSlots do
            if RaidAssignments.CustomMarks[i][mark] and RaidAssignments.CustomMarks[i][mark][slot] then
                hasAssignments = true
                break
            end
        end
        if hasAssignments then break end
    end

    if not hasAssignments then
        DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments 3.0|r: No custom assignments to post for frame " .. i)
        return
    end

    local windowTitle = RaidAssignments_Settings.CustomWindowTitles and RaidAssignments_Settings.CustomWindowTitles[i] or "Custom Assignments " .. tostring(i)
    SendChatMessage("-- " .. windowTitle .. " --", chan, nil, chanNum)

    -- COLORED POSTING (REVERSED ORDER)
    if RaidAssignments_Settings["usecolors"] then
        for mark = 10, 1, -1 do
            local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
            local names = {}
            for slot = 1, maxSlots do
                local name = RaidAssignments.CustomMarks[i][mark] and RaidAssignments.CustomMarks[i][mark][slot]
                if name and name ~= "" then
                    table.insert(names, RaidAssignments:GetClassColors(name, "cff"))
                end
            end
            if table.getn(names) > 0 then
                local label
                if mark >= 9 and mark <= 10 then
                    local editBox = _G["C" .. i .. "_" .. mark .. "_Edit"]
                    label = (editBox and editBox:GetText() ~= "") and editBox:GetText() or
                            RaidAssignments.CustomRealMarks[i][mark] or
                            ("Custom " .. (mark - 8))
                else
                    label = RaidAssignments.CustomRealMarks[i][mark] or ("Mark " .. mark)
                end
                local coloredLabel = markColors[mark] .. label .. "|r"
                local text = coloredLabel .. ": " .. table.concat(names, ", ") .. "."
                SendChatMessage(text, chan, nil, chanNum)
            end
        end
    else
        -- NON-COLORED POSTING (REVERSED ORDER)
        for mark = 10, 1, -1 do
            local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
            local names = {}
            for slot = 1, maxSlots do
                local name = RaidAssignments.CustomMarks[i][mark] and RaidAssignments.CustomMarks[i][mark][slot]
                if name and name ~= "" then
                    table.insert(names, name)
                end
            end
            if table.getn(names) > 0 then
                local label
                if mark >= 9 and mark <= 10 then
                    local editBox = _G["C" .. i .. "_" .. mark .. "_Edit"]
                    label = (editBox and editBox:GetText() ~= "") and editBox:GetText() or
                            RaidAssignments.CustomRealMarks[i][mark] or
                            ("Custom " .. (mark - 8))
                else
                    label = RaidAssignments.CustomRealMarks[i][mark] or ("Mark " .. mark)
                end
                local text = label .. ": " .. table.concat(names, ", ") .. "."
                SendChatMessage(text, chan, nil, chanNum)
            end
        end
    end

    -- WHISPER SECTION (unchanged)
    if RaidAssignments_Settings["useWhisper"] then
        for mark = 10, 1, -1 do
            local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
            for slot = 1, maxSlots do
                local name = RaidAssignments.CustomMarks[i][mark] and RaidAssignments.CustomMarks[i][mark][slot]
                if name and name ~= "" and RaidAssignments:IsInRaid(name) then
                    local label
                    if mark >= 9 and mark <= 10 then
                        local editBox = _G["C" .. i .. "_" .. mark .. "_Edit"]
                        label = (editBox and editBox:GetText() ~= "") and editBox:GetText() or
                                RaidAssignments.CustomRealMarks[i][mark] or
                                ("Custom " .. (mark - 8))
                    else
                        label = RaidAssignments.CustomRealMarks[i][mark] or ("Mark " .. mark)
                    end
                    local text = "You are assigned to " .. label .. " (slot " .. slot .. ")"
                    SendChatMessage(text, "WHISPER", nil, name)
                end
            end
        end
    end

    RaidAssignments:SendCustom(i)
end


-- UI
function RaidAssignments:ConfigCustomFrame(i)
    local name = "RaidAssignmentsCustom"..tostring(i)
    if _G[name] then return end

    -- Ensure data structures exist
    RaidAssignments.CustomMarks[i] = RaidAssignments.CustomMarks[i] or {}
    RaidAssignments.CustomRealMarks[i] = RaidAssignments.CustomRealMarks[i] or {}
    RaidAssignments_Settings.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles or {}

    local frame = CreateFrame("Frame", name, UIParent)
    frame:SetFrameStrata("MEDIUM")
    frame:SetWidth(800)
    frame:SetHeight(600)
    frame:SetPoint("CENTER", 0, 100)
    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = false, 
        tileSize = 16,
        edgeSize = 16,  -- Increased for thicker border
        insets = { 
            left = 5,   -- Increased to accommodate thicker border
            right = 5, 
            top = 5, 
            bottom = 5 
        }
    })
    frame:SetBackdropColor(0,0,0,1)
    frame:SetBackdropBorderColor(1,1,1,1)  -- Full white border

    frame:SetScript("OnDragStart", function() this:StartMoving() end)
    frame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)

    -- Create title EditBox WITH AUTO-SYNC
    frame.titleEditBox = RaidAssignments:AddCustomWindowTitleEditBox(frame, i)

    -- Title display
    frame.title = frame:CreateFontString(nil, "OVERLAY")
    frame.title:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 20)
    frame.title:SetPoint("TOP", frame.titleEditBox, "BOTTOM", 0, -5)

    -- Initialize with current title
    local currentTitle = RaidAssignments_Settings.CustomWindowTitles[i] or "Custom Assignments " .. tostring(i)
    frame.title:SetText(currentTitle)
    frame.titleEditBox:SetText(currentTitle)

    -- Add class filters
    local classIconStartX, classIconY, iconIndex = -10, -10, 1
    for n, class in pairs(RaidAssignments.Classes) do
        local r, l, t, b = RaidAssignments:ClassPos(class)
        local classframe = CreateFrame("Button", class.."_Custom"..i, frame)
        classframe:SetWidth(22)
        classframe:SetHeight(22)
        classframe:SetBackdropColor(0,0,0,1)
        classframe:SetPoint("TOPLEFT", classIconStartX + (iconIndex*25), classIconY)
        classframe:SetFrameStrata("MEDIUM")
        classframe.Icon = classframe:CreateTexture(nil, "ARTWORK")
        classframe.Icon:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
        classframe.Icon:SetTexCoord(r, l, t, b)
        classframe.Icon:SetPoint("TOPRIGHT", -1, -1)
        classframe.Icon:SetWidth(22)
        classframe.Icon:SetHeight(22)
        classframe:SetScript("OnEnter", function()
            local r,g,b = RaidAssignments:GetClassColors(string.gsub(this:GetName(), "_Custom"..i, ""),"class")
            GameTooltip:SetOwner(classframe, "ANCHOR_TOPRIGHT")
            GameTooltip:SetText("|cffFFFFFFShow|r "..string.gsub(this:GetName(), "_Custom"..i, ""), r,g,b)
            GameTooltip:Show()
        end)
        classframe:SetScript("OnLeave", function() GameTooltip:Hide() end)
        classframe:SetScript("OnMouseDown", function()
            if arg1 == "LeftButton" then
                local className = string.gsub(this:GetName(), "_Custom"..i, "")
                if RaidAssignments_Settings[className] == 1 then
                    RaidAssignments_Settings[className] = 0
                    classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
                else
                    RaidAssignments_Settings[className] = 1
                    classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
                end
                RaidAssignments:SyncClassFilters()
            end
        end)
        iconIndex = iconIndex + 1

        -- Initialize filter state
        local className = string.gsub(classframe:GetName(), "_Custom"..i, "")
        if RaidAssignments_Settings[className] == nil then
            RaidAssignments_Settings[className] = 1
        end
        if RaidAssignments_Settings[className] == 1 then
            classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
        else
            classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
        end
    end

    frame.closeButton = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    frame.closeButton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -2, -2)
    frame.closeButton:SetWidth(24)
    frame.closeButton:SetHeight(24)
    frame.closeButton:SetFrameStrata("MEDIUM")
    frame.closeButton:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        frame:Hide()
    end)

    -- Remove All Button
    local removeAllBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    removeAllBtn:SetWidth(100)
    removeAllBtn:SetHeight(24)
    removeAllBtn:SetPoint("TOPRIGHT", frame.closeButton, "TOPLEFT", -10, 0)
    removeAllBtn:SetText("Remove All")
    removeAllBtn:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")

            -- Clear all assignments for this custom window
            for mark = 1, 10 do
                local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
                for slot = 1, maxSlots do
                    RaidAssignments.CustomMarks[i][mark][slot] = nil
                end
            end

            -- Hide all frames
            for mark = 1, 10 do
                if RaidAssignments.CustomFrames[i].frames and RaidAssignments.CustomFrames[i].frames[mark] then
                    for name, frame in pairs(RaidAssignments.CustomFrames[i].frames[mark]) do
                        if frame and frame.Hide then
                            frame:Hide()
                        end
                    end
                    RaidAssignments.CustomFrames[i].frames[mark] = {}
                end
            end

            -- Update display and sync
            RaidAssignments:UpdateCustom(i)
            RaidAssignments:SendCustom(i)
            DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: All assignments removed from Custom " .. i)
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cffC79C6E RaidAssignments|r: You must be raid leader/assistant to remove assignments")
        end
    end)

    local padding = 5

    -- Regular marks 1-8
    for displayOrder = 1, 8 do
        local m = 9 - displayOrder
        local r, l, t, b = RaidAssignments:GetMarkPos(m)
        local icon = CreateFrame("Frame", "C"..i.."_M"..m, frame)
        icon:SetWidth(35)
        icon:SetHeight(35)
        icon:SetPoint("TOPLEFT", 50, -75 - ((35 + padding) * (displayOrder - 1)))
        icon:EnableMouse(true)
        icon:SetScript("OnEnter", function()
            RaidAssignments:OpenCustomToolTip(this:GetName(), i)
        end)
        icon:SetScript("OnLeave", function() end)

        icon.Icon = icon:CreateTexture(nil, "ARTWORK")
        icon.Icon:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
        icon.Icon:SetTexCoord(r, l, t, b)
        icon.Icon:SetAllPoints(icon)
    end

    -- Custom marks 9 and 10
    for m = 9, 10 do
        local displayOrder = m
        local icon = CreateFrame("Frame", "C"..i.."_M"..m, frame)
        icon:SetWidth(35)
        icon:SetHeight(35)
        icon:SetPoint("TOPLEFT", 50, -75 - ((35 + padding) * (displayOrder - 1)) - ((m-9) * 30))
        icon:EnableMouse(true)
        icon:SetScript("OnEnter", function()
            RaidAssignments:OpenCustomToolTip(this:GetName(), i)
        end)
        icon:SetScript("OnLeave", function() end)

        icon.Icon = icon:CreateTexture(nil, "ARTWORK")
        icon.Icon:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\Custom.tga")
        icon.Icon:SetAllPoints(icon)

        local editBoxName = "C"..i.."_"..m.."_Edit"
        local editBox = CreateFrame("EditBox", editBoxName, frame, "InputBoxTemplate")
        editBox:SetWidth(90)
        editBox:SetHeight(24)
        editBox:SetPoint("TOPLEFT", icon, "BOTTOMLEFT", -20, -5)
        editBox:SetAutoFocus(false)

        local defaultText = RaidAssignments.CustomRealMarks[i][m] or ("Custom " .. (m - 8))
        editBox:SetText(defaultText)

        -- Auto-sync on label change
        editBox:SetScript("OnEnterPressed", function()
            local txt = this:GetText()
            if txt and txt ~= "" then
                RaidAssignments.CustomRealMarks[i][m] = txt
                RaidAssignments:SendCustomLabels(i)
                RaidAssignments:UpdateCustom(i)
            else
                local defaultText = "Custom " .. (m - 8)
                this:SetText(defaultText)
                RaidAssignments.CustomRealMarks[i][m] = defaultText
                RaidAssignments:SendCustomLabels(i)
            end
            this:ClearFocus()
        end)

        editBox:SetScript("OnEscapePressed", function()
            local currentText = RaidAssignments.CustomRealMarks[i][m] or ("Custom " .. (m - 8))
            this:SetText(currentText)
            this:ClearFocus()
        end)
    end

    local postBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    postBtn:SetWidth(140)
    postBtn:SetHeight(24)
    postBtn:SetPoint("BOTTOMLEFT", 100, 20)
    postBtn:SetText("Post Assignments")
    postBtn:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            PlaySound("igMainMenuOptionCheckBoxOn")
            RaidAssignments:PostCustomAssignments(i)
        end
    end)

    local backBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    backBtn:SetWidth(180)
    backBtn:SetHeight(24)
    backBtn:SetPoint("BOTTOMRIGHT", -100, 20)
    backBtn:SetText("Back to Raid Assignments")
    backBtn:SetScript("OnClick", function()
        PlaySound("igMainMenuOptionCheckBoxOn")
        frame:Hide()
        RaidAssignments.Settings["Animation"] = false
        RaidAssignments.Settings["MainFrame"] = false
        RaidAssignments.Settings["SizeX"] = 0
        RaidAssignments.Settings["SizeY"] = 0
        RaidAssignments:Show()
    end)

    frame:Hide()
    RaidAssignments.CustomFrames[i].frame = frame
end

function RaidAssignments:ConfigAllCustomFrames()
    for i = 1, 8 do
        RaidAssignments:ConfigCustomFrame(i)
    end
end

function RaidAssignments:UpdateCustom(i)
    local frameData = RaidAssignments.CustomFrames[i]
    if not frameData or not frameData.frame then return end
    local parent = frameData.frame
    RaidAssignments.CustomFrames[i].frames = RaidAssignments.CustomFrames[i].frames or {}
    local inRaid = GetRaidRosterInfo(1) or RaidAssignments.TestMode

    if inRaid then
        for mark = 1, 10 do
            local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
            RaidAssignments.CustomFrames[i].frames[mark] = RaidAssignments.CustomFrames[i].frames[mark] or {}

            -- Hide all frames first
            for _, f in pairs(RaidAssignments.CustomFrames[i].frames[mark]) do
                if f and f.Hide then f:Hide() end
            end

            -- Show assigned players
            for slot = 1, maxSlots do
                local pname = RaidAssignments.CustomMarks[i][mark] and RaidAssignments.CustomMarks[i][mark][slot]
                if pname and pname ~= "" then
                    if not RaidAssignments.CustomFrames[i].frames[mark][pname] then
                        local f = CreateFrame("Button", nil, parent)
                        f:SetWidth(80)
                        f:SetHeight(25)

                        f.hpbar = CreateFrame("Frame", nil, f)
                        f.hpbar:SetWidth(f:GetWidth() - 4)
                        f.hpbar:SetHeight(24)
                        f.hpbar:SetPoint("TOPLEFT", 2, -1)
                        f.hpbar:SetFrameLevel(10)

                        f.texture = f.hpbar:CreateTexture(nil, "ARTWORK")
                        f.texture:SetWidth(f:GetWidth() - 4)
                        f.texture:SetHeight(24)
                        f.texture:SetPoint("TOPLEFT", 0, 0)
                        f.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\LiteStep")
                        f.texture:SetGradientAlpha("VERTICAL", 1, 1, 1, 0, 1, 1, 1, 1)

                        f.name = f.hpbar:CreateFontString(nil, "OVERLAY")
                        f.name:SetPoint("CENTER", 0, 0)
                        f.name:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 12)
                        f.name:SetTextColor(1, 1, 1, 1)
                        f.name:SetShadowOffset(1, -1)
                        f.name:SetText(pname)

                        f:SetBackdrop({
                            edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
                            edgeSize = 2,
                            insets = { left = 0, right = 0, top = 0, bottom = 0 }
                        })
                        f:SetBackdropBorderColor(1, 0, 0, 1)

                        -- Store the variables we need for removal
                        f.customIndex = i
                        f.mark = mark
                        f.playerName = pname
                        f.slot = slot

                        -- Auto-sync on removal
                        f:SetScript("OnClick", function()
                            if IsRaidOfficer("player") then
                                -- Remove from custom assignments
                                local maxSlots = (this.mark >= 9 and this.mark <= 10) and 6 or 5
                                local removed = false

                                for k = 1, maxSlots do
                                    if RaidAssignments.CustomMarks[this.customIndex][this.mark] and
                                    RaidAssignments.CustomMarks[this.customIndex][this.mark][k] == this.playerName then
                                        RaidAssignments.CustomMarks[this.customIndex][this.mark][k] = nil
                                        removed = true
                                        break
                                    end
                                end

                                if removed then
                                    this:Hide()
                                    if RaidAssignments.CustomFrames[this.customIndex].frames[this.mark] then
                                        RaidAssignments.CustomFrames[this.customIndex].frames[this.mark][this.playerName] = nil
                                    end
                                    RaidAssignments:UpdateCustom(this.customIndex)
                                    RaidAssignments:SendCustom(this.customIndex)
                                end
                            end
                        end)

                        f:EnableMouse(true)
                        f:RegisterForClicks("LeftButtonUp", "RightButtonUp")
                        f:SetFrameStrata("HIGH")

                        RaidAssignments.CustomFrames[i].frames[mark][pname] = f
                    end

                    local f = RaidAssignments.CustomFrames[i].frames[mark][pname]
                    f:ClearAllPoints()
                    -- Position on RIGHT side of the mark icon
                    local markFrame = _G["C"..i.."_M"..mark]
                    if markFrame then
                        f:SetPoint("LEFT", markFrame, "RIGHT", 10 + (85 * (slot - 1)), 0)
                    else
                        f:SetPoint("LEFT", parent, "LEFT", 100 + (85 * slot), -60 - ((35 + 5) * (mark - 1)))
                    end

                    -- Update colors
                    local r,g,b = RaidAssignments:GetClassColors(pname, "rgb")
                    if f.texture then
                        f.texture:SetVertexColor(r,g,b,1)
                    end

                    f:Show()
                end
            end
        end
    else
        for mark = 1, 10 do
            for _, v in pairs(RaidAssignments.CustomFrames[i].frames[mark] or {}) do
                if v and v.Hide then v:Hide() end
            end
        end
    end
end

-- Hook setup call (run this during addon load)
local orig_OnEvent = RaidAssignments.OnEvent
function RaidAssignments:OnEvent()
    orig_OnEvent(self)
    if event == "ADDON_LOADED" and arg1 == "RaidAssignments" then
        RaidAssignments:ConfigAllCustomFrames()
    end
end

--  Attach 8 Custom Assignment Buttons to Main Frame

function RaidAssignments:CreateCustomAssignmentButtons()
    if not RaidAssignments.bg then return end

    local parent = RaidAssignments.bg

    -- Remove existing buttons if any
    if RaidAssignments.CustomButtons then
        for _, b in ipairs(RaidAssignments.CustomButtons) do
            if b and b.Hide then b:Hide() end
        end
    end
    RaidAssignments.CustomButtons = {}

    -- Create buttons in a single horizontal row below existing buttons
    for i = 1, 8 do
        local btn = CreateFrame("Button", "RaidAssignmentsCustomBtn"..i, parent, "UIPanelButtonTemplate")
        btn:SetWidth(70)
        btn:SetHeight(26)

        -- Position buttons in a single row at the bottom, further down to avoid overlap
        if i == 1 then
            -- Anchor the first button to the bottom-left, further down
            btn:SetPoint("BOTTOMLEFT", parent, "BOTTOMLEFT", 220, 50)
        else
            -- Anchor subsequent buttons to the right of the previous button
            btn:SetPoint("LEFT", RaidAssignments.CustomButtons[i-1], "RIGHT", 5, 0)
        end
        btn:SetText("C" .. i)

        -- Button click handler
        btn:SetScript("OnClick", (function(customIndex)
            return function()
                PlaySound("igMainMenuOptionCheckBoxOn")
                if RaidAssignments.ToolTip then RaidAssignments.ToolTip:Hide() end
                if RaidAssignments.HealToolTip then RaidAssignments.HealToolTip:Hide() end
                RaidAssignments.Settings["Animation"] = true
                RaidAssignments.Settings["MainFrame"] = false

                RaidAssignments:ConfigCustomFrame(customIndex)
                RaidAssignments:Hide()
                if RaidAssignments.CustomFrames[customIndex] and RaidAssignments.CustomFrames[customIndex].frame then
                    RaidAssignments.CustomFrames[customIndex].frame:Show()
                    RaidAssignments:UpdateCustom(customIndex)

                    -- Auto-sync when opening window if officer
                    if IsRaidOfficer("player") then
                        RaidAssignments:SendCustom(customIndex)
                    end
                end
            end
        end)(i))

        -- Add tooltip
        btn:SetScript("OnEnter", (function(btnIndex)
            return function()
                GameTooltip:SetOwner(btn, "ANCHOR_TOP")
                GameTooltip:SetText("Custom Assignments " .. btnIndex)
                GameTooltip:Show()
            end
        end)(i))

        btn:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)

        table.insert(RaidAssignments.CustomButtons, btn)
    end

    -- Remove the container frame since it's no longer needed
    if RaidAssignments.CustomButtonsContainer then
        RaidAssignments.CustomButtonsContainer:Hide()
        RaidAssignments.CustomButtonsContainer = nil
    end
end

-- Ensure buttons are created when main frame is built or addon loads
local orig_OnEvent_Custom = RaidAssignments.OnEvent
function RaidAssignments:OnEvent()
    orig_OnEvent_Custom(self)
    if event == "ADDON_LOADED" and arg1 == "RaidAssignments" then
        RaidAssignments:ConfigAllCustomFrames()
        RaidAssignments:CreateCustomAssignmentButtons()
    end
end

SLASH_RAIDASSIGNMENTS1 = "/rc"
SlashCmdList["RAIDASSIGNMENTS"] = function(msg)
    local spacePos = string.find(msg, " ")
    local cmd, arg
    if spacePos then
        cmd = string.sub(msg, 1, spacePos - 1)
        arg = string.sub(msg, spacePos + 1)
    else
        cmd = msg
        arg = ""
    end

    cmd = string.lower(cmd or "")

    if cmd == "custom" and tonumber(arg) then
        local i = tonumber(arg)
        if i >= 1 and i <= 8 then
            RaidAssignments:ConfigCustomFrame(i)
            if RaidAssignments.CustomFrames[i] and RaidAssignments.CustomFrames[i].frame then
                RaidAssignments.CustomFrames[i].frame:Show()
                RaidAssignments:UpdateCustom(i)
                DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99RaidAssignments:|r Opened Custom Assignments " .. i)
            end
        else
            DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99RaidAssignments:|r Usage: /rc custom [1-8]")
        end
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99RaidAssignments:|r Commands:")
        DEFAULT_CHAT_FRAME:AddMessage("/rc custom [1-8] - Open a Custom Assignments window")
    end
end

function RaidAssignments:OpenCustomToolTip(frameName, customIndex)
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        -- Parse frame name to get mark number
        local mark = tonumber(string.sub(frameName, string.find(frameName, "M") + 1))
        if not mark then return end

        -- Hide any existing custom tooltip first
        if RaidAssignments.CustomToolTip and RaidAssignments.CustomToolTip:IsShown() then
            RaidAssignments.CustomToolTip:Hide()
        end

        -- Create tooltip frame if it doesn't exist, otherwise reuse
        if not RaidAssignments.CustomToolTip then
            RaidAssignments.CustomToolTip = CreateFrame("Frame", "RaidAssignmentsCustomToolTip", UIParent)
            RaidAssignments.CustomToolTip:SetFrameStrata("DIALOG")
            RaidAssignments.CustomToolTip:SetBackdrop({
                bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
                tile = false,
                tileSize = 16,
                edgeSize = 2,
                insets = { left = 1, right = 1, top = 1, bottom = 1 }
            })
            RaidAssignments.CustomToolTip:SetBackdropColor(0, 0, 0, 1)
            RaidAssignments.CustomToolTip:SetBackdropBorderColor(1, 1, 1, 0.5)
            RaidAssignments.CustomToolTip:EnableMouse(true)
            RaidAssignments.CustomToolTip:EnableMouseWheel(true)
        end

        local tooltip = RaidAssignments.CustomToolTip

        -- Clear ALL existing frames from ALL custom indexes to prevent cross-contamination
        for i = 1, 8 do
            if RaidAssignments.CustomFrames[i] and RaidAssignments.CustomFrames[i].tooltipFrames then
                for name, frame in pairs(RaidAssignments.CustomFrames[i].tooltipFrames) do
                    if frame and frame.Hide then
                        frame:Hide()
                        frame:SetParent(nil)
                    end
                end
                RaidAssignments.CustomFrames[i].tooltipFrames = {}
            end
        end

        -- Initialize tooltip frames storage for this custom index if needed
        if not RaidAssignments.CustomFrames[customIndex].tooltipFrames then
            RaidAssignments.CustomFrames[customIndex].tooltipFrames = {}
        end

        local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
        local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()

        -- Collect eligible players
        local eligiblePlayers = {}
        for i = 1, numMembers do
            local name, class
            if RaidAssignments.TestMode then
                name = roster[i] and roster[i].name
                class = roster[i] and roster[i].class
            else
                name = UnitName("raid"..i)
                class = UnitClass("raid"..i)
            end
            if name and class then
                local f = false
                -- Check if player is already assigned to ANY mark in this custom window
                for m = 1, 10 do
                    local maxSlots = (m >= 9 and m <= 10) and 6 or 5
                    for s = 1, maxSlots do
                        if RaidAssignments.CustomMarks[customIndex][m] and
                           RaidAssignments.CustomMarks[customIndex][m][s] == name then
                            f = true
                            break
                        end
                    end
                    if f then break end
                end
                if not f and RaidAssignments_Settings[class] == 1 then
                    table.insert(eligiblePlayers, name)
                end
            end
        end

        -- Calculate columns
        local totalPlayers = table.getn(eligiblePlayers)
        if totalPlayers == 0 then
            tooltip:Hide()
            return
        end

        local maxPlayersPerColumn = 10
        local numColumns = math.ceil(totalPlayers / maxPlayersPerColumn)
        local playersPerColumn = math.ceil(totalPlayers / numColumns)
        local actualRows = math.min(playersPerColumn, totalPlayers)

        -- Create columns
        local columnWidth = 80
        local totalWidth = columnWidth * numColumns
        local totalHeight = 25 * actualRows

        -- Set up the tooltip backdrop
        tooltip:SetWidth(totalWidth)
        tooltip:SetHeight(totalHeight)
        -- Position tooltip on LEFT side of the mark
        tooltip:SetPoint("TOPRIGHT", frameName, "TOPLEFT", 0, 0)

        -- Store custom index and mark for later use
        tooltip.customIndex = customIndex
        tooltip.mark = mark
        tooltip.originalMark = _G[frameName]
        tooltip.isVisible = true

        -- Improved mouse handling
        tooltip:SetScript("OnLeave", function()
            -- Check if mouse is actually leaving both the tooltip AND the original mark
            local mouseFocus = GetMouseFocus()
            local overTooltip = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
            local overMark = (mouseFocus == this.originalMark) or (mouseFocus and mouseFocus:GetParent() == this.originalMark)

            if not overTooltip and not overMark then
                this.isVisible = false
                this:Hide()
                -- Clean up frames when hiding
                if RaidAssignments.CustomFrames[customIndex] and RaidAssignments.CustomFrames[customIndex].tooltipFrames then
                    for name, frame in pairs(RaidAssignments.CustomFrames[customIndex].tooltipFrames) do
                        if frame and frame.Hide then
                            frame:Hide()
                            frame:SetParent(nil)
                        end
                    end
                    RaidAssignments.CustomFrames[customIndex].tooltipFrames = {}
                end
            end
        end)

        -- Improved OnLeave for the original mark frame
        if tooltip.originalMark then
            tooltip.originalMark:SetScript("OnLeave", function()
                -- Check if mouse is actually leaving both the mark AND the tooltip
                local mouseFocus = GetMouseFocus()
                local overMark = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
                local overTooltip = (mouseFocus == RaidAssignments.CustomToolTip) or (mouseFocus and mouseFocus:GetParent() == RaidAssignments.CustomToolTip)

                if not overMark and not overTooltip then
                    RaidAssignments.CustomToolTip.isVisible = false
                    RaidAssignments.CustomToolTip:Hide()
                    -- Clean up frames when hiding
                    if RaidAssignments.CustomFrames[customIndex] and RaidAssignments.CustomFrames[customIndex].tooltipFrames then
                        for name, frame in pairs(RaidAssignments.CustomFrames[customIndex].tooltipFrames) do
                            if frame and frame.Hide then
                                frame:Hide()
                                frame:SetParent(nil)
                            end
                        end
                        RaidAssignments.CustomFrames[customIndex].tooltipFrames = {}
                    end
                end
            end)
        end

        -- Create player frames
        for col = 1, numColumns do
            local startIndex = (col - 1) * playersPerColumn + 1
            local endIndex = math.min(startIndex + playersPerColumn - 1, totalPlayers)

            for i = startIndex, endIndex do
                local name = eligiblePlayers[i]
                local rowIndex = i - startIndex

                -- Create new frame
                local frame = RaidAssignments:AddCustomToolTipFrame(name, tooltip, customIndex)
                RaidAssignments.CustomFrames[customIndex].tooltipFrames[name] = frame

                frame:ClearAllPoints()
                frame:SetPoint("TOPLEFT", tooltip, "TOPLEFT", (col - 1) * columnWidth + 2, -2 - (25 * rowIndex))
                frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
                frame:Show()
            end
        end

        tooltip:Show()
    end
end

function RaidAssignments:AddCustomToolTipFrame(name, tooltip, customIndex)
    -- Clean up any existing frame with this name first
    if RaidAssignments.CustomFrames[customIndex].tooltipFrames and RaidAssignments.CustomFrames[customIndex].tooltipFrames[name] then
        local oldFrame = RaidAssignments.CustomFrames[customIndex].tooltipFrames[name]
        if oldFrame and oldFrame.Hide then
            oldFrame:Hide()
            oldFrame:SetParent(nil)
        end
        RaidAssignments.CustomFrames[customIndex].tooltipFrames[name] = nil
    end

    local unit = RaidAssignments:GetRaidID(name)
    local frame = CreateFrame("Button", nil, tooltip)

    -- COPY THE EXACT STYLING FROM AddToolTipFrame
    local backdrop = {
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        tile = false,
        tileSize = 8,
        edgeSize = 4,
        insets = { left = 2, right = 2, top = 0, bottom = 0 }
    }

    frame:SetWidth(80)
    frame:SetHeight(25)
    frame:SetBackdrop(backdrop)
    frame:SetBackdropColor(0, 0, 0, 0)

    frame.texture = frame:CreateTexture(nil, "ARTWORK")
    frame.texture:SetWidth(frame:GetWidth() - 4)
    frame.texture:SetHeight(24)
    frame.texture:SetPoint("TOPLEFT", 2, -1)
    frame.texture:SetTexture("Interface\\AddOns\\RaidAssignments\\assets\\LiteStep")
    frame.texture:SetGradientAlpha("VERTICAL", 1, 1, 1, 0, 1, 1, 1, 1)

    frame.name = frame:CreateFontString(nil, "OVERLAY")
    frame.name:SetPoint("CENTER", 0, 0)
    frame.name:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 12)
    frame.name:SetTextColor(1, 1, 1, 1)
    frame.name:SetShadowOffset(1, -1)
    frame.name:SetText(name)

    -- Toggle add/remove for custom assignments
    frame:SetScript("OnClick", function()
        if IsRaidOfficer("player") then
            local mark = tooltip.mark
            local cIndex = tooltip.customIndex
            local f = true
            local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5

            -- Check if player is already assigned
            for k = 1, maxSlots do
                if RaidAssignments.CustomMarks[cIndex][mark] and
                   RaidAssignments.CustomMarks[cIndex][mark][k] == name then
                    f = false
                    RaidAssignments.CustomMarks[cIndex][mark][k] = nil
                    this:Hide()
                    if RaidAssignments.CustomFrames[cIndex].frames[mark] then
                        RaidAssignments.CustomFrames[cIndex].frames[mark][name] = nil
                    end
                    RaidAssignments:UpdateCustom(cIndex)
                    RaidAssignments:SendCustom(cIndex)
                    -- Refresh tooltip if open
                    if RaidAssignments.CustomToolTip and RaidAssignments.CustomToolTip:IsShown() then
                        RaidAssignments.CustomToolTip:Hide()
                        RaidAssignments:OpenCustomToolTip("C" .. cIndex .. "_M" .. mark, cIndex)
                    end
                    return
                end
            end

            -- Add player if not assigned
            if f then
                local slot = nil
                for i = 1, maxSlots do
                    if not RaidAssignments.CustomMarks[cIndex][mark][i] then
                        slot = i
                        break
                    end
                end
                if slot then
                    RaidAssignments.CustomMarks[cIndex][mark][slot] = name
                    RaidAssignments:UpdateCustom(cIndex)
                    RaidAssignments:SendCustom(cIndex)
                    this:Hide()
                    -- Refresh tooltip after add to reposition remaining frames
                    if RaidAssignments.CustomToolTip and RaidAssignments.CustomToolTip:IsShown() then
                        RaidAssignments.CustomToolTip:Hide()
                        RaidAssignments:OpenCustomToolTip("C" .. cIndex .. "_M" .. mark, cIndex)
                    end
                end
            end
        end
    end)

    frame.unit = unit
    frame:SetScript("OnEnter", UnitFrame_OnEnter)
    frame:SetScript("OnLeave", UnitFrame_OnLeave)
    return frame
end

function RaidAssignments:AddCustomAssignment(name, mark, customIndex)
    mark = tonumber(mark)
    customIndex = tonumber(customIndex)

    -- Ensure the mark exists in the table
    if not RaidAssignments.CustomMarks[customIndex][mark] then
        RaidAssignments.CustomMarks[customIndex][mark] = {}
    end

    -- Find the first available slot
    local slot = nil
    local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
    for i = 1, maxSlots do
        if not RaidAssignments.CustomMarks[customIndex][mark][i] then
            slot = i
            break
        end
    end

    if slot then
        RaidAssignments.CustomMarks[customIndex][mark][slot] = name
    end
end

function RaidAssignments:OpenGeneralToolTip(frameName)
    if GetRaidRosterInfo(1) or RaidAssignments.TestMode then
        -- Clear existing tooltip frames
        if RaidAssignments.Frames["GeneralToolTip"] then
            for k, v in pairs(RaidAssignments.Frames["GeneralToolTip"]) do
                if v and v.Hide then
                    v:Hide()
                end
            end
        else
            RaidAssignments.Frames["GeneralToolTip"] = {}
        end

        local n = tonumber(string.sub(frameName, 2))
        local roster = RaidAssignments.TestMode and RaidAssignments.TestRoster or {}
        local numMembers = RaidAssignments.TestMode and table.getn(RaidAssignments.TestRoster) or GetNumRaidMembers()

        -- Collect eligible players (same logic as before)
        local eligiblePlayers = {}
        for i = 1, numMembers do
            local name, class
            if RaidAssignments.TestMode then
                name = roster[i] and roster[i].name
                class = roster[i] and roster[i].class
            else
                name = UnitName("raid"..i)
                class = UnitClass("raid"..i)
            end
            if name and class then
                local f = false
                -- Check if player is already assigned to ANY general mark (1-10)
                for j = 1, 10 do
                    local maxSlots = (j >= 9 and j <= 10) and 7 or 5
                    for k = 1, maxSlots do
                        if RaidAssignments.GeneralMarks[j] and RaidAssignments.GeneralMarks[j][k] == name then
                            f = true
                            break
                        end
                    end
                    if f then break end
                end
                if not f and RaidAssignments_Settings[class] == 1 then
                    table.insert(eligiblePlayers, name)
                end
            end
        end

        local totalPlayers = table.getn(eligiblePlayers)
        if totalPlayers == 0 then
            RaidAssignments.GeneralToolTip:Hide()
            return
        end

        -- Use the same column calculation as other tooltips
        local maxPlayersPerColumn = 10
        local numColumns = math.ceil(totalPlayers / maxPlayersPerColumn)
        local playersPerColumn = math.ceil(totalPlayers / numColumns)
        local actualRows = math.min(playersPerColumn, totalPlayers)

        local columnWidth = 80
        local totalWidth = columnWidth * numColumns
        local totalHeight = 25 * actualRows

        -- Position and size the tooltip
        RaidAssignments.GeneralToolTip:SetWidth(totalWidth)
        RaidAssignments.GeneralToolTip:SetHeight(totalHeight)
        RaidAssignments.GeneralToolTip:SetPoint("TOPRIGHT", frameName, "TOPLEFT", 0, 0)

        -- ENSURE PROPER STRATA WHEN SHOWN
        RaidAssignments.GeneralToolTip:SetFrameStrata("DIALOG")

        -- Store references
        RaidAssignments.GeneralToolTip.originalMark = _G[frameName]
        RaidAssignments.GeneralToolTip.isVisible = true

        -- Improved mouse handling
        RaidAssignments.GeneralToolTip:SetScript("OnLeave", function()
            -- Check if mouse is actually leaving both the tooltip AND the original mark
            local mouseFocus = GetMouseFocus()
            local overTooltip = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
            local overMark = (mouseFocus == this.originalMark) or (mouseFocus and mouseFocus:GetParent() == this.originalMark)

            if not overTooltip and not overMark then
                this.isVisible = false
                this:Hide()
            end
        end)

        -- Improved OnLeave for the original mark frame
        if RaidAssignments.GeneralToolTip.originalMark then
            RaidAssignments.GeneralToolTip.originalMark:SetScript("OnLeave", function()
                -- Check if mouse is actually leaving both the mark AND the tooltip
                local mouseFocus = GetMouseFocus()
                local overMark = (mouseFocus == this) or (mouseFocus and mouseFocus:GetParent() == this)
                local overTooltip = (mouseFocus == RaidAssignments.GeneralToolTip) or (mouseFocus and mouseFocus:GetParent() == RaidAssignments.GeneralToolTip)

                if not overMark and not overTooltip then
                    RaidAssignments.GeneralToolTip.isVisible = false
                    RaidAssignments.GeneralToolTip:Hide()
                end
            end)
        end

        -- Create player frames
        for col = 1, numColumns do
            local startIndex = (col - 1) * playersPerColumn + 1
            local endIndex = math.min(startIndex + playersPerColumn - 1, totalPlayers)

            for i = startIndex, endIndex do
                local name = eligiblePlayers[i]
                local rowIndex = i - startIndex

                RaidAssignments.Frames["GeneralToolTip"][name] = RaidAssignments.Frames["GeneralToolTip"][name] or RaidAssignments:AddToolTipFrame(name, RaidAssignments.GeneralToolTip)
                local frame = RaidAssignments.Frames["GeneralToolTip"][name]
                frame:SetPoint("TOPLEFT", RaidAssignments.GeneralToolTip, "TOPLEFT", (col - 1) * columnWidth + 2, -2 - (25 * rowIndex))
                frame.texture:SetVertexColor(RaidAssignments:GetClassColors(name, "rgb"))
                frame:Show()
            end
        end

        RaidAssignments.Settings["active_general"] = n
        RaidAssignments.GeneralToolTip:Show()
    end
end

function RaidAssignments:SyncClassFilters()
    -- Update all class icons in main frame
    for _, class in pairs(RaidAssignments.Classes) do
        local classframe = _G[class]
        if classframe and classframe.Icon then
            if RaidAssignments_Settings[class] == 1 then
                classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
            else
                classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
            end
        end
    end

    -- Update class icons in general frame
    for _, class in pairs(RaidAssignments.Classes) do
        local classframe = _G[class.."_General"]
        if classframe and classframe.Icon then
            if RaidAssignments_Settings[class] == 1 then
                classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
            else
                classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
            end
        end
    end

    -- Update class icons in custom frames
    for i = 1, 8 do
        for _, class in pairs(RaidAssignments.Classes) do
            local classframe = _G[class.."_Custom"..i]
            if classframe and classframe.Icon then
                if RaidAssignments_Settings[class] == 1 then
                    classframe.Icon:SetVertexColor(1.0, 1.0, 1.0)
                else
                    classframe.Icon:SetVertexColor(0.5, 0.5, 0.5)
                end
            end
        end
    end

    if RaidAssignments.ToolTip and RaidAssignments.ToolTip:IsShown() then
        local activeMark = RaidAssignments.Settings["active"]
        if activeMark then
            RaidAssignments.ToolTip:Hide()
            RaidAssignments:OpenToolTip("T"..activeMark)
        end
    end

    if RaidAssignments.HealToolTip and RaidAssignments.HealToolTip:IsShown() then
        local activeMark = RaidAssignments.Settings["active_heal"]
        if activeMark then
            RaidAssignments.HealToolTip:Hide()
            RaidAssignments:OpenHealToolTip("H"..activeMark)
        end
    end

    if RaidAssignments.GeneralToolTip and RaidAssignments.GeneralToolTip:IsShown() then
        local activeMark = RaidAssignments.Settings["active_general"]
        if activeMark then
            RaidAssignments.GeneralToolTip:Hide()
            RaidAssignments:OpenGeneralToolTip("G"..activeMark)
        end
    end

    if RaidAssignments.CustomToolTip and RaidAssignments.CustomToolTip:IsShown() then
        local customIndex = RaidAssignments.CustomToolTip.customIndex
        local mark = RaidAssignments.CustomToolTip.mark
        if customIndex and mark then
            RaidAssignments.CustomToolTip:Hide()
            RaidAssignments:OpenCustomToolTip("C"..customIndex.."_M"..mark, customIndex)
        end
    end
end

function RaidAssignments:AddCustomWindowTitleEditBox(frame, i)
    local titleEditBox = CreateFrame("EditBox", "CustomWindowTitle"..i, frame, "InputBoxTemplate")
    titleEditBox:SetWidth(200)
    titleEditBox:SetHeight(24)
    titleEditBox:SetPoint("TOP", frame, "TOP", 0, -10)
    titleEditBox:SetAutoFocus(false)

    -- Ensure saved variables structure exists
    RaidAssignments_Settings.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles or {}
    RaidAssignments.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles

    local defaultTitle = RaidAssignments.CustomWindowTitles[i] or "Custom Assignments " .. tostring(i)
    titleEditBox:SetText(defaultTitle)

    -- Update the frame title initially
    if frame.title then
        frame.title:SetText(defaultTitle)
    end

    titleEditBox:SetScript("OnEnterPressed", function()
        local txt = this:GetText()
        if txt and txt ~= "" then
            RaidAssignments.CustomWindowTitles[i] = txt
            RaidAssignments_Settings.CustomWindowTitles[i] = txt
            if frame.title then
                frame.title:SetText(txt)
            end
            RaidAssignments:SendCustomWindowTitle(i)
        else
            local defaultTitle = "Custom Assignments " .. tostring(i)
            this:SetText(defaultTitle)
            RaidAssignments.CustomWindowTitles[i] = defaultTitle
            RaidAssignments_Settings.CustomWindowTitles[i] = defaultTitle
            if frame.title then
                frame.title:SetText(defaultTitle)
            end
            RaidAssignments:SendCustomWindowTitle(i)
        end
        this:ClearFocus()
    end)

    titleEditBox:SetScript("OnEscapePressed", function()
        local currentTitle = RaidAssignments.CustomWindowTitles[i] or "Custom Assignments " .. tostring(i)
        this:SetText(currentTitle)
        this:ClearFocus()
    end)

    titleEditBox:SetScript("OnEditFocusLost", function()
        local txt = this:GetText()
        if not txt or txt == "" then
            local defaultTitle = "Custom Assignments " .. tostring(i)
            this:SetText(defaultTitle)
            RaidAssignments.CustomWindowTitles[i] = defaultTitle
            RaidAssignments_Settings.CustomWindowTitles[i] = defaultTitle
            if frame.title then
                frame.title:SetText(defaultTitle)
            end
            RaidAssignments:SendCustomWindowTitle(i)
        end
    end)

    return titleEditBox
end

function RaidAssignments:SendCustomWindowTitle(i)
    if not (RaidAssignments.TestMode or IsRaidOfficer("player")) then
        return
    end

    if not (i and i >= 1 and i <= 8) then
        return
    end

    RaidAssignments_Settings.CustomWindowTitles = RaidAssignments_Settings.CustomWindowTitles or {}
    local title = RaidAssignments_Settings.CustomWindowTitles[i] or "Custom Assignments " .. tostring(i)

    local channel = (RaidAssignments.TestMode and not (GetNumRaidMembers() > 0)) and "GUILD" or "RAID"
    SendAddonMessage("RACTitle" .. tostring(i), title, channel)
end

function RaidAssignments:SendCustom(customIndex)
    if not (RaidAssignments.TestMode or IsRaidOfficer("player")) then
        return
    end

    if not (customIndex and customIndex >= 1 and customIndex <= 8) then
        return
    end

    local data = ""
    for mark = 1, 10 do
        local maxSlots = (mark >= 9 and mark <= 10) and 6 or 5
        for slot = 1, maxSlots do
            local name = RaidAssignments.CustomMarks[customIndex][mark][slot]
            if name and name ~= "" then
                data = data .. mark .. "_" .. slot .. "_" .. name .. ","
            end
        end
    end

    if data ~= "" then
        data = string.sub(data, 1, -2)
    end

    local channel = (RaidAssignments.TestMode and not (GetNumRaidMembers() > 0)) and "GUILD" or "RAID"
    SendAddonMessage("RaidAssignmentsCustomMarks"..tostring(customIndex), data, channel)
end

-- ======================================================
-- DEBUG: FORCE-SHOW MINIMAP BUTTON
-- ======================================================
function RaidAssignments:CreateMinimapButton()
    if RaidAssignmentsMinimapButton then
        RaidAssignmentsMinimapButton:Show()
        return
    end

    local button = CreateFrame("Button", "RaidAssignmentsMinimapButton", Minimap)
    button:SetFrameStrata("HIGH")
    button:SetWidth(33)
    button:SetHeight(33)
    button:EnableMouse(true)
    button:SetMovable(true)
    button:RegisterForDrag("LeftButton")
    button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight", "ADD")

    -- Icon (bright red target)
    local icon = button:CreateTexture(nil, "BACKGROUND")
    icon:SetTexture("Interface\\Icons\\Ability_Defend")
    icon:SetWidth(24)
    icon:SetHeight(24)
    icon:SetPoint("CENTER", 0, 0)
    icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)

    -- Border
    local border = button:CreateTexture(nil, "ARTWORK")
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    border:SetWidth(54)
    border:SetHeight(54)
    border:SetPoint("CENTER", 10, -10)

    -- Force a visible position
    local angle = math.rad(245)
    local x = 80 * math.cos(angle)
    local y = 80 * math.sin(angle)
    button:ClearAllPoints()
    button:SetPoint("CENTER", Minimap, "CENTER", x, y)

    -- Tooltip
    button:SetScript("OnEnter", function()
        GameTooltip:SetOwner(this, "ANCHOR_LEFT")
        GameTooltip:ClearLines()
        GameTooltip:AddLine("RaidAssignments", 1, 1, 0.5)
        GameTooltip:AddLine("Left-click: Toggle window", 1, 1, 1)
        GameTooltip:AddLine("Drag to move", 0.6, 0.6, 0.6)
        GameTooltip:Show()
    end)
    button:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Clicks
    button:SetScript("OnClick", function()
        if arg1 == "LeftButton" then
            if RaidAssignments:IsShown() then
                RaidAssignments:Hide()
            else
                RaidAssignments:Show()
            end
        end
    end)

    button:SetScript("OnDragStart", function()
        this:SetScript("OnUpdate", function()
            local mx, my = Minimap:GetCenter()
            local px, py = GetCursorPosition()
            local scale = Minimap:GetEffectiveScale()
            local dx, dy = px / scale - mx, py / scale - my
            local angle = math.atan2(dy, dx)
            local x = 80 * math.cos(angle)
            local y = 80 * math.sin(angle)
            this:ClearAllPoints()
            this:SetPoint("CENTER", Minimap, "CENTER", x, y)
        end)
    end)
    button:SetScript("OnDragStop", function()
        this:SetScript("OnUpdate", nil)
    end)

    button:Show()
end

-- ======================================================
-- YOUR MARK FRAME
-- Shows your assigned raid mark icon, the target's name, HP bar and % HP.
-- Click to target. Uses SuperWoW "mark1"-"mark8" unit IDs.
-- Layout: [mark icon] | YOUR MARK
--                     | [target name]
--                     | [====hp bar====] xx%
-- ======================================================

-- Mark border colours (r, g, b)
RaidAssignments.MarkColors = {
    [1] = {1.00, 0.96, 0.41},  -- Star     - yellow
    [2] = {1.00, 0.60, 0.00},  -- Circle   - orange
    [3] = {0.80, 0.00, 1.00},  -- Diamond  - purple
    [4] = {0.40, 1.00, 0.00},  -- Triangle - green
    [5] = {0.81, 0.93, 0.96},  -- Moon     - pale blue
    [6] = {0.00, 0.71, 1.00},  -- Square   - blue
    [7] = {1.00, 0.20, 0.20},  -- Cross    - red
    [8] = {1.00, 1.00, 1.00},  -- Skull    - white
}

function RaidAssignments:CreateYourMarkFrame()
    if RaidAssignments.YourMarkFrame then return end

    local ICON_SIZE = 32
    local INFO_W    = 120   -- narrower to reduce HP bar length
    local BAR_H     = 8
    local PAD       = 8
    local FRAME_W   = PAD + ICON_SIZE + PAD + INFO_W + PAD
    local FRAME_H   = PAD + ICON_SIZE + PAD

    local frame = CreateFrame("Button", "RaidAssignmentsYourMarkFrame", UIParent)
    frame:SetWidth(FRAME_W)
    frame:SetHeight(FRAME_H)
    frame:SetPoint("CENTER", UIParent, "CENTER", 400, 0)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetFrameStrata("HIGH")
    frame:SetScript("OnDragStart", function() this:StartMoving() end)
    frame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnMouseWheel", function()
        local f = RaidAssignments.YourMarkFrame
        local scale = f:GetScale()
        if arg1 > 0 then
            scale = math.min(scale + 0.05, 3.0)
        else
            scale = math.max(scale - 0.05, 0.3)
        end
        f:SetScale(scale)
    end)

    -- Dark solid background (no WoW backdrop edge so we control the border ourselves)
    frame:SetBackdrop({
        bgFile   = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "",
        tile = false, tileSize = 0, edgeSize = 0,
        insets = { left = 0, right = 0, top = 0, bottom = 0 }
    })
    frame:SetBackdropColor(0.06, 0.06, 0.06, 0.93)

    -- ── Coloured border: four solid 2-px lines ────────────────────────
    -- We use WHITE8X8 which is a guaranteed 1-colour-fill texture in every client.
    local function MakeLine(parent)
        local t = parent:CreateTexture(nil, "BORDER")
        t:SetTexture("Interface\\Buttons\\WHITE8X8")
        return t
    end

    local bT = MakeLine(frame)  -- top
    bT:SetHeight(2)
    bT:SetPoint("TOPLEFT",  frame, "TOPLEFT",  0,  0)
    bT:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0,  0)

    local bB = MakeLine(frame)  -- bottom
    bB:SetHeight(2)
    bB:SetPoint("BOTTOMLEFT",  frame, "BOTTOMLEFT",  0, 0)
    bB:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)

    local bL = MakeLine(frame)  -- left
    bL:SetWidth(2)
    bL:SetPoint("TOPLEFT",    frame, "TOPLEFT",    0,  0)
    bL:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0,  0)

    local bR = MakeLine(frame)  -- right
    bR:SetWidth(2)
    bR:SetPoint("TOPRIGHT",    frame, "TOPRIGHT",    0,  0)
    bR:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0,  0)

    frame.borderLines = { bT, bB, bL, bR }

    -- ── Mark icon ─────────────────────────────────────────────────────
    -- Icon sits on ARTWORK; nothing above it except OVERLAY text.
    local markIcon = frame:CreateTexture("RaidAssignmentsYourMarkIcon", "ARTWORK")
    markIcon:SetWidth(ICON_SIZE)
    markIcon:SetHeight(ICON_SIZE)
    markIcon:SetPoint("LEFT", frame, "LEFT", PAD, 0)
    frame.markIcon = markIcon

    -- ── Info section ──────────────────────────────────────────────────
    local infoLeft = PAD + ICON_SIZE + PAD

    -- Target name
    local nameLabel = frame:CreateFontString(nil, "OVERLAY")
    nameLabel:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 13)
    nameLabel:SetPoint("TOPLEFT", frame, "TOPLEFT", infoLeft, -PAD)
    nameLabel:SetWidth(INFO_W)
    nameLabel:SetJustifyH("LEFT")
    nameLabel:SetText("")
    nameLabel:SetTextColor(1, 1, 1, 1)
    frame.nameLabel = nameLabel

    -- HP bar track (dark background)
    local barTrack = frame:CreateTexture(nil, "ARTWORK")
    barTrack:SetTexture("Interface\\Buttons\\WHITE8X8")
    barTrack:SetVertexColor(0.12, 0.12, 0.12, 1)
    barTrack:SetHeight(BAR_H)
    barTrack:SetPoint("BOTTOMLEFT",  frame, "BOTTOMLEFT",  infoLeft, PAD)
    barTrack:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -PAD,     PAD)
    frame.barTrack = barTrack

    -- HP bar fill (WHITE8X8 = flat solid colour, no texture shimmer)
    local hpBar = frame:CreateTexture(nil, "OVERLAY")
    hpBar:SetTexture("Interface\\Buttons\\WHITE8X8")
    hpBar:SetHeight(BAR_H)
    hpBar:SetPoint("LEFT",   barTrack, "LEFT",   0, 0)
    hpBar:SetPoint("TOP",    barTrack, "TOP",    0, 0)
    hpBar:SetPoint("BOTTOM", barTrack, "BOTTOM", 0, 0)
    hpBar:SetWidth(INFO_W)
    hpBar:SetVertexColor(0.20, 0.85, 0.20, 1)
    frame.hpBar = hpBar

    -- Store the bar's max width once the frame is laid out
    -- We calculate it from INFO_W minus pads
    frame.hpBarMaxW = INFO_W

    -- HP percent (right edge of bar track, small)
    local hpPct = frame:CreateFontString(nil, "OVERLAY")
    hpPct:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 9)
    hpPct:SetPoint("RIGHT", barTrack, "RIGHT", -2, 0)
    hpPct:SetText("")
    hpPct:SetTextColor(1, 1, 1, 1)
    hpPct:SetShadowColor(0, 0, 0, 1)
    hpPct:SetShadowOffset(1, -1)
    frame.hpPct = hpPct

    -- ── Click ─────────────────────────────────────────────────────────
    frame:SetScript("OnClick", function()
        if arg1 == "LeftButton" then
            local mi = RaidAssignments.YourMarkFrame.assignedMarkIndex
            if not mi then return end
            if UnitExists("mark"..mi) then
                TargetUnit("mark"..mi)
            end
        end
    end)

    -- ── Tooltip ───────────────────────────────────────────────────────
    frame:SetScript("OnEnter", function()
        GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
        GameTooltip:ClearLines()
        local mi = RaidAssignments.YourMarkFrame.assignedMarkIndex
        if mi then
            local mn = RaidAssignments.RealMarks[mi] or ("Mark "..mi)
            GameTooltip:AddLine("Your Mark: "..mn, 1, 1, 0.5)
            if UnitExists("mark"..mi) then
                GameTooltip:AddLine("Left-click to target", 0.6, 0.6, 0.6)
            else
                GameTooltip:AddLine("Mark not on any unit", 1, 0.5, 0.5)
            end
        end
        GameTooltip:AddLine("Drag to move", 0.45, 0.45, 0.45)
        GameTooltip:Show()
    end)
    frame:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- ── OnUpdate: live name + HP ──────────────────────────────────────
    frame:SetScript("OnUpdate", function()
        local f = RaidAssignments.YourMarkFrame
        if not f or not f:IsShown() then return end
        local mi = f.assignedMarkIndex
        if not mi then return end
        local mu = "mark"..mi
        if UnitExists(mu) then
            f.nameLabel:SetText(UnitName(mu) or "")

            local hp    = UnitHealth(mu)    or 0
            local hpMax = UnitHealthMax(mu) or 1
            if hpMax < 1 then hpMax = 1 end
            local pct = hp / hpMax

            local bw = math.floor(f.hpBarMaxW * pct)
            if bw < 1 then bw = 1 end
            f.hpBar:SetWidth(bw)

            f.hpPct:SetText(math.floor(pct * 100).."%")

            -- green → yellow → red
            if pct > 0.5 then
                f.hpBar:SetVertexColor((1 - pct) * 2, 1, 0, 1)
            else
                f.hpBar:SetVertexColor(1, pct * 2, 0, 1)
            end
        else
            f.nameLabel:SetText("|cff666666no unit|r")
            f.hpPct:SetText("")
            f.hpBar:SetWidth(1)
        end
    end)

    frame.assignedMarkIndex = nil
    frame:Hide()
    RaidAssignments.YourMarkFrame = frame
end

-- Set border colour + re-apply mark icon texcoords
function RaidAssignments:SetYourMarkFrameColor(r, g, b)
    local f = RaidAssignments.YourMarkFrame
    if not f then return end
    for _, line in ipairs(f.borderLines) do
        line:SetVertexColor(r, g, b, 1)
    end
end

function RaidAssignments:UpdateYourMarkFrame()
    if not RaidAssignments.YourMarkFrame then return end
    if RaidAssignments_Settings["showYourMarkFrame"] == false then
        RaidAssignments.YourMarkFrame:Hide()
        return
    end

    local playerName = UnitName("player")
    local foundMark  = nil

    for markIndex = 1, 8 do
        local slots = RaidAssignments.Marks[markIndex]
        if slots then
            for _, name in pairs(slots) do
                if name == playerName then
                    foundMark = markIndex
                    break
                end
            end
        end
        if foundMark then break end
    end

    if foundMark then
        local frame = RaidAssignments.YourMarkFrame
        frame.assignedMarkIndex = foundMark

        -- Apply icon: set texture first, THEN texcoords
        frame.markIcon:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
        local cr, cl, ct, cb = RaidAssignments:GetMarkPos(foundMark)
        frame.markIcon:SetTexCoord(cr, cl, ct, cb)

        local col = RaidAssignments.MarkColors[foundMark] or {0.8, 0.8, 0.8}
        RaidAssignments:SetYourMarkFrameColor(col[1], col[2], col[3])

        frame:Show()

        -- Chat notification: only fire when the mark assignment changes
        if RaidAssignments._lastNotifiedMark ~= foundMark then
            RaidAssignments._lastNotifiedMark = foundMark
            local markName = RaidAssignments.RealMarks[foundMark] or ("Mark "..foundMark)
            local unitId   = "mark"..foundMark
            local targetName = UnitExists(unitId) and UnitName(unitId) or nil

            -- Build a clickable hyperlink that targets the mark when clicked.
            -- We abuse the |Hunit: channel to pass the unit token via a secure
            -- workaround: print a clickable [target] button using a macro hyperlink.
            -- In classic/Vanilla the safest approach is a fake item link whose
            -- OnClick we intercept, but the most reliable simple method is to
            -- print a chat message and a separate clickable button frame.
            local col3 = RaidAssignments.MarkColors[foundMark] or {0.8, 0.8, 0.8}
            local r, g, b = col3[1], col3[2], col3[3]
            local hexCol = string.format("%02x%02x%02x",
                math.floor(r*255), math.floor(g*255), math.floor(b*255))

            -- Build the message with a clickable RAmark hyperlink.
            -- We use a custom |HRAmark:N| link type and hook SetItemRef to handle it,
            -- so no other addon (e.g. AtlasLoot) will choke on an unknown unit: link.
            local msg = "|cffFFD700[RaidAssignments]|r Your mark: |cff"..hexCol..markName.."|r"
            local linkText = targetName and ("["..targetName.."]") or ("[Target "..markName.."]")
            local clickLink = "|HRAmark:"..foundMark.."|h|cff00ccff"..linkText.."|r|h"
            msg = msg .. " -> " .. clickLink
            DEFAULT_CHAT_FRAME:AddMessage(msg)
            PlaySoundFile("Interface\\AddOns\\RaidAssignments\\assets\\FFXIV_Incoming_Tell_1.mp3")
        end
    else
        RaidAssignments.YourMarkFrame.assignedMarkIndex = nil
        RaidAssignments.YourMarkFrame:Hide()
        -- Clear notification state when unassigned
        RaidAssignments._lastNotifiedMark = nil
    end
end

-- ======================================================
-- YOUR CURSE FRAME
-- Shows your assigned warlock curse as a reminder display.
-- No click-to-target needed - just a visual cue of your curse.
-- ======================================================

-- Curse border colours (r, g, b) - warlock purples
RaidAssignments.CurseColors = {
    [9]  = {0.58, 0.51, 0.79},  -- Curse of Tongues    - warlock purple
    [10] = {0.80, 0.30, 0.30},  -- Curse of Recklessness - reddish
    [11] = {0.50, 0.20, 0.70},  -- Curse of Shadow     - deep purple
    [12] = {0.30, 0.60, 0.90},  -- Curse of the Elements - blue
}

function RaidAssignments:CreateYourCurseFrame()
    if RaidAssignments.YourCurseFrame then return end

    local ICON_SIZE = 25
    local INFO_W    = 160
    local PAD       = 6
    local FRAME_W   = PAD + ICON_SIZE + PAD + INFO_W + PAD
    local FRAME_H   = PAD + ICON_SIZE + PAD

    local frame = CreateFrame("Frame", "RaidAssignmentsYourCurseFrame", UIParent)
    frame:SetWidth(FRAME_W)
    frame:SetHeight(FRAME_H)
    -- Default position: just below the mark frame
    frame:SetPoint("CENTER", UIParent, "CENTER", 400, -50)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetFrameStrata("HIGH")
    frame:SetScript("OnDragStart", function() this:StartMoving() end)
    frame:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnMouseWheel", function()
        local f = RaidAssignments.YourCurseFrame
        local scale = f:GetScale()
        if arg1 > 0 then
            scale = math.min(scale + 0.05, 3.0)
        else
            scale = math.max(scale - 0.05, 0.3)
        end
        f:SetScale(scale)
    end)

    -- Dark background
    frame:SetBackdrop({
        bgFile   = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "",
        tile = false, tileSize = 0, edgeSize = 0,
        insets = { left = 0, right = 0, top = 0, bottom = 0 }
    })
    frame:SetBackdropColor(0.06, 0.06, 0.06, 0.93)

    -- Coloured border lines
    local function MakeLine(parent)
        local t = parent:CreateTexture(nil, "BORDER")
        t:SetTexture("Interface\\Buttons\\WHITE8X8")
        return t
    end

    local bT = MakeLine(frame)
    bT:SetHeight(2)
    bT:SetPoint("TOPLEFT",  frame, "TOPLEFT",  0, 0)
    bT:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0)

    local bB = MakeLine(frame)
    bB:SetHeight(2)
    bB:SetPoint("BOTTOMLEFT",  frame, "BOTTOMLEFT",  0, 0)
    bB:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)

    local bL = MakeLine(frame)
    bL:SetWidth(2)
    bL:SetPoint("TOPLEFT",    frame, "TOPLEFT",    0, 0)
    bL:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, 0)

    local bR = MakeLine(frame)
    bR:SetWidth(2)
    bR:SetPoint("TOPRIGHT",    frame, "TOPRIGHT",    0, 0)
    bR:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)

    frame.borderLines = { bT, bB, bL, bR }

    -- Curse icon
    local curseIcon = frame:CreateTexture("RaidAssignmentsYourCurseIcon", "ARTWORK")
    curseIcon:SetWidth(ICON_SIZE)
    curseIcon:SetHeight(ICON_SIZE)
    curseIcon:SetPoint("LEFT", frame, "LEFT", PAD, 0)
    frame.curseIcon = curseIcon

    -- Curse name label
    local infoLeft = PAD + ICON_SIZE + PAD
    local nameLabel = frame:CreateFontString(nil, "OVERLAY")
    nameLabel:SetFont("Interface\\AddOns\\RaidAssignments\\assets\\BalooBhaina.ttf", 13)
    nameLabel:SetPoint("TOPLEFT", frame, "TOPLEFT", infoLeft, -PAD)
    nameLabel:SetWidth(INFO_W)
    nameLabel:SetJustifyH("LEFT")
    nameLabel:SetText("")
    nameLabel:SetTextColor(1, 1, 1, 1)
    frame.nameLabel = nameLabel

    -- Tooltip
    frame:SetScript("OnEnter", function()
        GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
        GameTooltip:ClearLines()
        local ci = RaidAssignments.YourCurseFrame.assignedCurseIndex
        if ci then
            local data = RaidAssignments.WarlockMarks[ci]
            GameTooltip:AddLine("Your Curse Assignment", 1, 1, 0.5)
            GameTooltip:AddLine(data and data.name or "Unknown", 1, 1, 1)
        end
        GameTooltip:AddLine("Drag to move", 0.45, 0.45, 0.45)
        GameTooltip:AddLine("Scroll to resize", 0.45, 0.45, 0.45)
        GameTooltip:Show()
    end)
    frame:SetScript("OnLeave", function() GameTooltip:Hide() end)

    frame.assignedCurseIndex = nil
    frame:Hide()
    RaidAssignments.YourCurseFrame = frame
end

function RaidAssignments:UpdateYourCurseFrame()
    if not RaidAssignments.YourCurseFrame then return end
    if RaidAssignments_Settings["showYourMarkFrame"] == false then
        RaidAssignments.YourCurseFrame:Hide()
        return
    end

    -- Only relevant for Warlocks, but we check the data regardless
    local playerName = UnitName("player")
    local foundCurse = nil

    -- Search curse marks (indices 9-12)
    for markIndex = 9, 12 do
        local slots = RaidAssignments.Marks[markIndex]
        if slots then
            for _, name in pairs(slots) do
                if name == playerName then
                    foundCurse = markIndex
                    break
                end
            end
        end
        if foundCurse then break end
    end

    if foundCurse then
        local frame = RaidAssignments.YourCurseFrame
        frame.assignedCurseIndex = foundCurse

        local data = RaidAssignments.WarlockMarks[foundCurse]
        if data then
            frame.curseIcon:SetTexture(data.icon)
            frame.nameLabel:SetText(data.name)
        end

        local col = RaidAssignments.CurseColors[foundCurse] or {0.58, 0.51, 0.79}
        for _, line in ipairs(frame.borderLines) do
            line:SetVertexColor(col[1], col[2], col[3], 1)
        end

        frame:Show()
    else
        RaidAssignments.YourCurseFrame.assignedCurseIndex = nil
        RaidAssignments.YourCurseFrame:Hide()
    end
end

-- ======================================================
-- KEYBINDING: Target Your Mark
-- Registered via BINDINGS-TEMPLATE.xml so users can
-- configure the key in the in-game Key Bindings menu.
-- ======================================================
function RAIDASSIGNMENTS_TARGET_MARK()
    local index = RaidAssignments.YourMarkFrame and RaidAssignments.YourMarkFrame.assignedMarkIndex
    if index then
        TargetUnit("mark" .. index)
    end
end
