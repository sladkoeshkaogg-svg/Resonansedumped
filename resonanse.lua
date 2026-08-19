-- Resonance UI recreation
-- Obsidian UI Library
-- Подставь свой loader библиотеки здесь:

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

local Window = Library:CreateWindow({
    Title = "🌙 Resonance",
    Footer = "Project Resonance",
    Center = true,
    AutoShow = true,
})

-- =========================================================
-- TABS
-- =========================================================

local Tabs = {
    Home = Window:AddTab("Home", "house"),
    Player = Window:AddTab("Player", "user"),
    Combat = Window:AddTab("Combat", "hand"),
    Invincibility = Window:AddTab("Invincibility", "shield"),
    Target = Window:AddTab("Target", "crosshair"),
    Blobman = Window:AddTab("Blobman", "mask"),
    Toys = Window:AddTab("Toys", "shapes"),
    Visual = Window:AddTab("Visual", "eye"),
    AutoClicker = Window:AddTab("Auto-Clicker", "mouse-pointer"),
    Keybinds = Window:AddTab("Keybinds", "keyboard"),
    Misc = Window:AddTab("Misc", "filter"),
    Lists = Window:AddTab("Lists", "scroll-text"),
    Settings = Window:AddTab("Settings", "settings"),
}

-- =========================================================
-- HOME
-- =========================================================

do
    local Greetings = Tabs.Home:AddLeftGroupbox("Greetings")
    local Stats = Tabs.Home:AddRightGroupbox("Statistics")
    local Script = Tabs.Home:AddRightGroupbox("Script")

    Greetings:AddLabel("Unavailable")
    Greetings:AddDivider()
    Greetings:AddLabel("Evening, Roblox")
    Greetings:AddLabel("Welcome to Resonance")
    Greetings:AddLabel("Maintained and developed by:")
    Greetings:AddLabel("marshel_ (@t0c9)")
    Greetings:AddLabel("Thanks for buying! Your license is lifetime")

    Stats:AddLabel("Current time: 17:09")
    Stats:AddLabel("Current script version: v2.8")
    Stats:AddLabel("Toggles currently on: 18")
    Stats:AddDivider()
    Stats:AddLabel("Server Statistics")
    Stats:AddLabel("Game name: Fling Things and People")
    Stats:AddLabel("Elapsed time: 60 seconds")
    Stats:AddLabel("Kicked players: 0")

    Script:AddButton("Unload Script", function() end)
    Script:AddButton("Rejoin", function() end)
    Script:AddButton("Server-hop", function() end)

    Script:AddToggle("AutoRejoin", {
        Text = "Auto Rejoin",
        Default = false,
    })

    Script:AddToggle("AntiLagJoin", {
        Text = "Join with Anti-Lag",
        Default = true,
    })

    Script:AddToggle("JoinScript", {
        Text = "Join with script",
        Default = false,
    })
end

-- =========================================================
-- PLAYER
-- =========================================================

do
    local Values = Tabs.Player:AddLeftGroupbox("Values")
    local Character = Tabs.Player:AddLeftGroupbox("Character")

    local TP = Tabs.Player:AddRightGroupbox("Teleporting")
    local Players = Tabs.Player:AddRightGroupbox("Players")
    local Animations = Tabs.Player:AddRightGroupbox("Animations")

    Values:AddSlider("WalkSpeedValue", {
        Text = "Walk Speed",
        Default = 16,
        Min = 0,
        Max = 1000,
        Rounding = 0,
    })

    Values:AddSlider("JumpPowerValue", {
        Text = "Jump Power",
        Default = 24,
        Min = 0,
        Max = 1000,
        Rounding = 0,
    })

    Values:AddSlider("FlightSpeed", {
        Text = "Flight Speed",
        Default = 1,
        Min = 1,
        Max = 20,
        Rounding = 0,
    })

    Values:AddSlider("SpinSpeed", {
        Text = "Spin Speed",
        Default = 15,
        Min = 0,
        Max = 1000,
        Rounding = 0,
    })

    Character:AddToggle("Flight", { Text = "Flight" })
    Character:AddToggle("Walkspeed", { Text = "Walkspeed" })
    Character:AddToggle("JumpPower", { Text = "Jump Power" })
    Character:AddToggle("CharacterSpin", { Text = "Character Spin" })
    Character:AddDivider()
    Character:AddToggle("Noclip", { Text = "Noclip" })
    Character:AddToggle("InfJump", { Text = "Inf Jump" })
    Character:AddToggle("JerkOff", { Text = "Jerk Off" })

    TP:AddDropdown("TPLocation", {
        Text = "Location",
        Values = {"---"},
        Default = 1,
    })

    TP:AddToggle("MakeSpawn", { Text = "Make Spawn Location" })
    TP:AddToggle("LoopTPLocation", { Text = "Loop TP to Location" })

    Players:AddDropdown("PlayerTarget", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Players:AddToggle("SpectatePlayer", { Text = "Spectate Player" })
    Players:AddToggle("LoopTPPlayer", { Text = "Loop TP to Player" })

    Animations:AddDropdown("Animation", {
        Text = "Animation to Play",
        Values = {"Arm Detach"},
        Default = 1,
    })

    Animations:AddSlider("AnimationSpeed", {
        Text = "Animation Speed",
        Default = 1,
        Min = 1,
        Max = 100,
        Rounding = 0,
    })

    Animations:AddToggle("ToggleAnimation", {
        Text = "Toggle Animation"
    })
end

-- =========================================================
-- COMBAT
-- =========================================================

do
    local Grabs = Tabs.Combat:AddLeftGroupbox("Grabs")
    local Auras = Tabs.Combat:AddLeftGroupbox("Auras")
    local ToyAuras = Tabs.Combat:AddLeftGroupbox("Toy Auras")

    local Line = Tabs.Combat:AddRightGroupbox("Line")
    local Packets = Tabs.Combat:AddRightGroupbox("Packets")

    Grabs:AddDropdown("GrabType", {
        Text = "Grabs",
        Values = {"---"},
        Default = 1,
    })

    Grabs:AddToggle("ToggleGrabs", { Text = "Toggle Grabs" })

    Grabs:AddDropdown("WeldCharacter", {
        Text = "Weld To Character",
        Values = {"None"},
        Default = 1,
    })

    Auras:AddDropdown("AuraType", {
        Text = "Auras",
        Values = {"---"},
        Default = 1,
    })

    Auras:AddSlider("AuraDistance", {
        Text = "Aura Distance",
        Default = 25,
        Min = 0,
        Max = 100,
        Rounding = 0,
    })

    Auras:AddToggle("ToggleAuras", { Text = "Toggle Auras" })
    Auras:AddToggle("ExcludeTargets", {
        Text = "Exclude Targets",
        Default = true,
    })

    ToyAuras:AddDropdown("ToyAura", {
        Text = "Auras",
        Values = {"---"},
        Default = 1,
    })

    ToyAuras:AddToggle("ToggleToyAura", { Text = "Toggle Toy Auras" })

    Line:AddSlider("ExtendSpeed", {
        Text = "Extend speed",
        Default = 1,
        Min = 1,
        Max = 100,
        Rounding = 1,
    })

    Line:AddToggle("ExtendLine", { Text = "Toggle Extend Line" })

    Line:AddSlider("LineStrength", {
        Text = "Strength",
        Default = 400,
        Min = 0,
        Max = 1000,
        Rounding = 0,
    })

    Line:AddToggle("SuperStrength", { Text = "Super Strength" })

    Packets:AddToggle("PacketLag", { Text = "Packet-Lag Server" })

    Packets:AddButton("Send One Packet", function() end)

    Packets:AddSlider("PacketSize", {
        Text = "Packet Size",
        Default = 0.35,
        Min = 0.01,
        Max = 5,
        Rounding = 2,
    })

    Packets:AddSlider("PacketDelay", {
        Text = "Sending Delay",
        Default = 0.1,
        Min = 0,
        Max = 5,
        Rounding = 2,
    })

    Packets:AddInput("CustomPrefix", {
        Text = "Custom Prefix",
        Default = "",
    })
end

-- =========================================================
-- INVINCIBILITY
-- =========================================================

do
    local Antis = Tabs.Invincibility:AddLeftGroupbox("Antis")
    local Counter = Tabs.Invincibility:AddLeftGroupbox("Counter-attack")

    local Misc = Tabs.Invincibility:AddRightGroupbox("Miscellaneous")
    local Config = Tabs.Invincibility:AddRightGroupbox("Config")

    local antiList = {
        "Anti Grab",
        "[GUCCI] Anti Grab",
        "Anti Blobman",
        "Anti Network Ownership",
        "Anti Explosion",
        "Anti Burn",
        "Anti Void",
        "Anti Kick",
        "[Break PCLD] Anti Kick",
        "Anti Sticky",
        "Anti Snowball",
        "Anti Banana",
        "Anti Paint",
        "Anti Poison",
        "Anti Lag",
        "Auto Anti Lag",
        "Anti Invis",
        "Auto Reset",
        "Loop TP",
    }

    for i, name in ipairs(antiList) do
        Antis:AddToggle("Anti_" .. i, {
            Text = name,
            Default = name == "Auto Anti Lag" or name == "Auto Reset",
        })
    end

    Counter:AddDropdown("CounterConsequence", {
        Text = "Consequences",
        Values = {"Kill"},
        Default = 1,
    })

    Counter:AddToggle("CounterAttack", {
        Text = "Counter Attack",
    })

    Misc:AddToggle("DisableVoid", {
        Text = "Disable Void",
        Default = true,
    })

    Misc:AddToggle("WaterWalk", { Text = "Water Walk" })
    Misc:AddToggle("NoclipBarrier", { Text = "Noclip Barrier" })
    Misc:AddToggle("AntiFlingNoclip", {
        Text = "Anti-Fling [Objects Noclip]"
    })

    Config:AddSlider("AntiLagSensitivity", {
        Text = "Auto Anti-Lag Sensitivity",
        Default = 3,
        Min = 1,
        Max = 20,
        Rounding = 0,
    })

    Config:AddDropdown("AntiGrabType", {
        Text = "Anti-Grab Type",
        Values = {"Normal"},
        Default = 1,
    })

    Config:AddDropdown("GucciType", {
        Text = "GUCCI Type",
        Values = {"Blobman"},
        Default = 1,
    })

    Config:AddDropdown("NetOwnerType", {
        Text = "Type",
        Values = {"FoodHamburger"},
        Default = 1,
    })

    Config:AddSlider("GrabDropDelay", {
        Text = "Grab & Drop Delay",
        Default = 0.05,
        Min = 0,
        Max = 0.3,
        Rounding = 2,
    })

    Config:AddSlider("ItemTransparency", {
        Text = "Item Transparency",
        Default = 1,
        Min = 0,
        Max = 1,
        Rounding = 2,
    })

    Config:AddToggle("Highlight", { Text = "Highlight" })

    Config:AddSlider("FillTransparency", {
        Text = "Fill Transparency",
        Default = 0.5,
        Min = 0,
        Max = 1,
        Rounding = 2,
    })

    Config:AddSlider("OutlineTransparency", {
        Text = "Outline Transparency",
        Default = 0,
        Min = 0,
        Max = 1,
        Rounding = 2,
    })

    Config:AddSlider("ShurikenTransparency", {
        Text = "Shuriken Transparency",
        Default = 0.9,
        Min = 0,
        Max = 1,
        Rounding = 2,
    })
end

-- =========================================================
-- TARGET
-- =========================================================

do
    local Target = Tabs.Target:AddLeftGroupbox("Target")
    local Apply = Tabs.Target:AddLeftGroupbox("Apply")
    local Methods = Tabs.Target:AddRightGroupbox("Method Settings")

    Target:AddDropdown("TargetPlayer", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Target:AddDropdown("TargetList", {
        Text = "Add To List",
        Values = {"None"},
        Default = 1,
    })

    Apply:AddToggle("TargetLoopSelected", {
        Text = "Loop Apply Method Selected"
    })

    Apply:AddToggle("TargetLoopServer", {
        Text = "Loop Apply Method Server"
    })

    Apply:AddButton("Apply Method Selected", function() end)
    Apply:AddButton("Apply Method Server", function() end)

    Methods:AddDropdown("TargetMethod", {
        Text = "Methods",
        Values = {
            "Kick",
            "Void",
            "Kill",
            "Bring",
            "Destroy Food",
            "Remove Gucci",
            "Remove Invisibility",
        },
        Default = 1,
    })
end

-- =========================================================
-- BLOBMAN
-- =========================================================

do
    local Target = Tabs.Blobman:AddLeftGroupbox("Target")
    local Apply = Tabs.Blobman:AddLeftGroupbox("Apply")
    local Settings = Tabs.Blobman:AddRightGroupbox("Settings")
    local Methods = Tabs.Blobman:AddRightGroupbox("Method Settings")

    Target:AddDropdown("BlobTarget", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Target:AddDropdown("BlobList", {
        Text = "Add To List",
        Values = {"None"},
        Default = 1,
    })

    Apply:AddToggle("BlobLoopSelected", {
        Text = "Loop Apply Method Selected"
    })

    Apply:AddToggle("BlobLoopServer", {
        Text = "Loop Apply Method Server"
    })

    Apply:AddButton("Apply Method Selected", function() end)
    Apply:AddButton("Apply Method Server", function() end)

    Settings:AddToggle("AutoSeatBlobman", {
        Text = "Auto Seat on Blobman"
    })

    Settings:AddToggle("FreezeBlobman", {
        Text = "Freeze Blobman"
    })

    Methods:AddDropdown("BlobMethod", {
        Text = "Blobman Method",
        Values = {
            "Kick",
            "Kill",
            "Bring",
            "Lock",
            "Follow",
            "Remove Gucci",
        },
        Default = 1,
    })
end

-- =========================================================
-- TOYS
-- =========================================================

do
    local Aura = Tabs.Toys:AddLeftGroupbox("Toys Aura")
    local Barrier = Tabs.Toys:AddRightGroupbox("Barrier")
    local Effects = Tabs.Toys:AddRightGroupbox("Effects")
    local Explosions = Tabs.Toys:AddRightGroupbox("Explosions")
    local BreakParts = Tabs.Toys:AddRightGroupbox("Break Parts")

    Aura:AddToggle("ToyAuraEnabled", { Text = "Enabled" })

    Aura:AddDropdown("ToyShape", {
        Text = "Shape",
        Values = {"Circle"},
        Default = 1,
    })

    Aura:AddDropdown("ToyGrabType", {
        Text = "Grab Type",
        Values = {"Aura"},
        Default = 1,
    })

    Aura:AddButton("Grab All Toys", function() end)
    Aura:AddButton("Release Toys", function() end)

    Aura:AddToggle("FaceCenter", {
        Text = "Face Center",
        Default = true,
    })

    Aura:AddToggle("AutoMove", { Text = "Auto Move" })

    Aura:AddSlider("MoveSpeed", {
        Text = "Move Speed",
        Default = 5,
        Min = 0,
        Max = 50,
        Rounding = 1,
    })

    Aura:AddToggle("AutoRotate", { Text = "Auto Rotate" })

    Aura:AddSlider("RotateSpeed", {
        Text = "Rotate Speed",
        Default = 1.5,
        Min = 0,
        Max = 10,
        Rounding = 1,
    })

    Aura:AddToggle("Bob", { Text = "Bob" })

    Aura:AddSlider("BobHeight", {
        Text = "Bob Height",
        Default = 3,
        Min = 0,
        Max = 20,
        Rounding = 1,
    })

    Aura:AddSlider("BobSpeed", {
        Text = "Bob Speed",
        Default = 2,
        Min = 0,
        Max = 20,
        Rounding = 1,
    })

    for _, data in ipairs({
        {"ShapeRadius", "Radius", 20, 0, 100},
        {"ShapeHeight", "Height", 20, 0, 100},
        {"ShapeSpread", "Spread", 1, 0, 20},
        {"ShapeRows", "Rows", 5, 1, 20},
        {"ShapeTurns", "Turns", 3, 1, 20},
    }) do
        Aura:AddSlider(data[1], {
            Text = data[2],
            Default = data[3],
            Min = data[4],
            Max = data[5],
            Rounding = 0,
        })
    end

    Aura:AddDropdown("PositionType", {
        Text = "Position Type",
        Values = {"You"},
        Default = 1,
    })

    Aura:AddButton("Set Custom Position", function() end)

    for _, axis in ipairs({"X", "Y", "Z"}) do
        Aura:AddSlider("ToyOffset" .. axis, {
            Text = axis .. " Offset",
            Default = axis == "Y" and 10 or 0,
            Min = -50,
            Max = 50,
            Rounding = 0,
        })
    end

    Barrier:AddToggle("DisableHouseBarrier", {
        Text = "Disable House Barrier"
    })

    Effects:AddDropdown("EffectsTarget", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Effects:AddDropdown("EffectType", {
        Text = "Effects",
        Values = {"---"},
        Default = 1,
    })

    Effects:AddToggle("EffectsLoopSelected", {
        Text = "Loop Apply Method Selected"
    })

    Effects:AddToggle("EffectsLoopServer", {
        Text = "Loop Apply Method Server"
    })

    Effects:AddButton("Apply Method Selected", function() end)
    Effects:AddButton("Apply Method Server", function() end)

    Explosions:AddSlider("ExplodeAtOnce", {
        Text = "How much to fire at once?",
        Default = 1,
        Min = 1,
        Max = 17,
        Rounding = 0,
    })

    Explosions:AddToggle("AutoExplodeTarget", {
        Text = "Auto Explode Target"
    })

    BreakParts:AddDropdown("DecollidePart", {
        Text = "Decollide Part",
        Values = {"None"},
        Default = 1,
    })

    BreakParts:AddButton("Create Button", function() end)
    BreakParts:AddButton("Remove Button", function() end)
    BreakParts:AddButton("Break Spawn", function() end)

    BreakParts:AddDropdown("BreakPart", {
        Text = "Which to Break",
        Values = {"---"},
        Default = 1,
    })

    BreakParts:AddButton("Break", function() end)
    BreakParts:AddButton("Destroy Train", function() end)
end

-- =========================================================
-- VISUAL
-- =========================================================

do
    local TogglesBox = Tabs.Visual:AddLeftGroupbox("Toggles")
    local Sounds = Tabs.Visual:AddLeftGroupbox("Sounds")
    local Sky = Tabs.Visual:AddLeftGroupbox("Sky")

    local Camera = Tabs.Visual:AddRightGroupbox("Camera")
    local Graphics = Tabs.Visual:AddRightGroupbox("Graphics")

    for _, name in ipairs({
        "Player ESP",
        "Server ESP [PC]",
        "Sticky ESP",
        "Blackhole ESP",
    }) do
        TogglesBox:AddToggle(name, { Text = name })
    end

    for _, name in ipairs({
        "Mute Ambience",
        "Mute Boomboxes & Jukeboxes",
        "Mute Screams",
        "Mute Explosions",
    }) do
        Sounds:AddToggle(name, { Text = name })
    end

    Sky:AddLabel(
        "Enabling shaders breaks the Skybox and Sun sections, if you want to use them don't enable shaders for now!"
    )

    Sky:AddToggle("CustomSkybox", { Text = "Custom Skybox" })

    Sky:AddInput("SkyboxID", {
        Text = "Skybox Link/Image ID",
        Default = "",
    })

    Sky:AddSlider("TimeOfDay", {
        Text = "Time Of Day",
        Default = 14,
        Min = 0,
        Max = 23,
        Rounding = 0,
    })

    Sky:AddSlider("SunSize", {
        Text = "Sun Size",
        Default = 30,
        Min = 0,
        Max = 60,
        Rounding = 0,
    })

    Sky:AddSlider("CloudDensity", {
        Text = "Clouds Density",
        Default = 0.655,
        Min = 0,
        Max = 1,
        Rounding = 3,
    })

    Sky:AddSlider("CloudCover", {
        Text = "Clouds Cover",
        Default = 0.571,
        Min = 0,
        Max = 1,
        Rounding = 3,
    })

    Sky:AddToggle("EnableClouds", {
        Text = "Enable Clouds",
        Default = true,
    })

    Sky:AddToggle("RGBClouds", { Text = "RGB Clouds" })

    Camera:AddToggle("DisableRagdollBlur", {
        Text = "Disable Ragdoll Blur"
    })

    Camera:AddToggle("ThirdPerson", {
        Text = "Third Person"
    })

    Camera:AddSlider("FOV", {
        Text = "FOV",
        Default = 70,
        Min = 1,
        Max = 120,
        Rounding = 0,
    })

    Camera:AddToggle("RealisticFirstPerson", {
        Text = "Realistic First Person"
    })

    Camera:AddSlider("LimbTransparency", {
        Text = "Limb Transparency",
        Default = 0.3,
        Min = 0,
        Max = 1,
        Rounding = 1,
    })

    Graphics:AddToggle("RealisticWater", {
        Text = "Realistic Water"
    })

    Graphics:AddToggle("Shaders", { Text = "Shaders" })
    Graphics:AddButton("Load PShade", function() end)
    Graphics:AddToggle("Particles", { Text = "Particles" })
end

-- =========================================================
-- AUTO CLICKER
-- =========================================================

do
    local Target = Tabs.AutoClicker:AddLeftGroupbox("Target")
    local Config = Tabs.AutoClicker:AddLeftGroupbox("Config")
    local Offset = Tabs.AutoClicker:AddRightGroupbox("Offset")
    local Presets = Tabs.AutoClicker:AddRightGroupbox("Presets")

    Target:AddDropdown("AC_Target", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Target:AddDropdown("AC_List", {
        Text = "Add To List",
        Values = {"None"},
        Default = 1,
    })

    Config:AddToggle("AC_Toggle", { Text = "Toggle" })

    for _, axis in ipairs({"X", "Y", "Z"}) do
        Config:AddSlider("AC_" .. axis, {
            Text = axis .. " Offset",
            Default = axis == "Z" and -5 or 0,
            Min = -50,
            Max = 50,
            Rounding = 0,
        })
    end

    Offset:AddDropdown("AC_Limb", {
        Text = "Select Limb",
        Values = {"Head"},
        Default = 1,
    })

    Presets:AddDropdown("Preset", {
        Text = "Choose Preset",
        Values = {"Default"},
        Default = 1,
    })

    Presets:AddButton("Load Preset", function() end)

    Presets:AddInput("PresetName", {
        Text = "Preset Name",
        Placeholder = "Type a custom preset name",
    })

    Presets:AddDropdown("CustomPreset", {
        Text = "Custom Preset",
        Values = {"---"},
        Default = 1,
    })

    Presets:AddButton("Save Current Preset", function() end)
    Presets:AddButton("Load Custom Preset", function() end)
    Presets:AddButton("Delete Custom Preset", function() end)
end

-- =========================================================
-- KEYBINDS
-- =========================================================

do
    local Local = Tabs.Keybinds:AddLeftGroupbox("LocalPlayer")
    local Mobile = Tabs.Keybinds:AddLeftGroupbox("Mobile Buttons")

    local Players = Tabs.Keybinds:AddRightGroupbox("Players")
    local Objects = Tabs.Keybinds:AddRightGroupbox("Objects")

    local localKeys = {
        "Click TP",
        "Sit on Blobman",
        "Zoom",
        "Escape any Grab",
        "Remove legs",
        "Remove arms",
        "Remove legs and arms",
        "Frontflip",
        "Backflip",
    }

    for i, name in ipairs(localKeys) do
        Local:AddLabel(name):AddKeyPicker("LocalKey" .. i, {
            Default = name == "Click TP" and "Z" or "None",
            Text = name,
        })
    end

    local playerKeys = {
        "Remove Gucci Plr",
        "Bring Player",
        "Kill Player",
        "Blob Kick Player",
        "Remove Legs Mouse",
        "Remove Arms Mouse",
        "Remove Legs & Arms Mouse",
    }

    for i, name in ipairs(playerKeys) do
        Players:AddLabel(name):AddKeyPicker("PlayerKey" .. i, {
            Default = "None",
            Text = name,
        })
    end

    local objectKeys = {
        "Spawn Pallet",
        "Anchor Object",
        "Destroy Object",
        "Auto Clicker",
        "Control Object",
        "Explode on Mouse",
    }

    for i, name in ipairs(objectKeys) do
        Objects:AddLabel(name):AddKeyPicker("ObjectKey" .. i, {
            Default = "None",
            Text = name,
        })
    end

    Mobile:AddDropdown("MobileMapping", {
        Text = "Select Keybind to Map",
        Values = localKeys,
        Default = 1,
    })

    Mobile:AddButton("Create Button", function() end)
    Mobile:AddButton("Remove Button", function() end)
end

-- =========================================================
-- MISC
-- =========================================================

do
    local Gamepasses = Tabs.Misc:AddLeftGroupbox("Gamepasses")
    local Auto = Tabs.Misc:AddLeftGroupbox("Auto")
    local Triggerbot = Tabs.Misc:AddLeftGroupbox("Triggerbot")
    local Plots = Tabs.Misc:AddLeftGroupbox("Plots")
    local Cheaters = Tabs.Misc:AddLeftGroupbox("Cheaters")

    local Sound = Tabs.Misc:AddRightGroupbox("Sound Spam")
    local Aim = Tabs.Misc:AddRightGroupbox("Aim Assist")
    local Silent = Tabs.Misc:AddRightGroupbox("Silent Aim")

    Gamepasses:AddToggle("FurtherReach", { Text = "Further Reach Line" })
    Gamepasses:AddToggle("GradientLine", { Text = "Gradient Line" })
    Gamepasses:AddToggle("FasterEscape", { Text = "Faster Escape" })

    Gamepasses:AddSlider("FasterEscapeValue", {
        Text = "Faster Escape",
        Default = 3,
        Min = 1,
        Max = 20,
        Rounding = 0,
    })

    for i = 1, 8 do
        Gamepasses:AddColorPicker("LineColor" .. i, {
            Title = "Line Color " .. i,
            Default = Color3.new(0,0,0),
        })
    end

    Gamepasses:AddColorPicker("DotColor", {
        Title = "Dot Color",
        Default = Color3.new(0,0,0),
    })

    Auto:AddToggle("AutoHouseTP", { Text = "Auto-House Teleport" })
    Auto:AddToggle("AutoSlots", { Text = "Auto-Slots" })

    Triggerbot:AddToggle("Triggerbot", { Text = "Toggle" })

    Triggerbot:AddSlider("TriggerDelay", {
        Text = "Delay",
        Default = 0.05,
        Min = 0,
        Max = 1,
        Rounding = 2,
    })

    Triggerbot:AddSlider("TriggerDistance", {
        Text = "Distance",
        Default = 33,
        Min = 0,
        Max = 200,
        Rounding = 0,
    })

    Plots:AddDropdown("Plot", {
        Text = "Select Plot",
        Values = {"---"},
        Default = 1,
    })

    Plots:AddToggle("AutoClaimPlot", {
        Text = "Auto-Claim Plot"
    })

    Plots:AddButton("Break Plot Area", function() end)
    Plots:AddButton("Fix Plot Area", function() end)
    Plots:AddButton("Fling all toys in plot", function() end)

    Cheaters:AddButton("Find Cheaters", function() end)

    Sound:AddDropdown("SpamSound", {
        Text = "Sounds to spam",
        Values = {"---"},
        Default = 1,
    })

    Sound:AddSlider("SoundDelay", {
        Text = "Delay",
        Default = 0.1,
        Min = 0,
        Max = 5,
        Rounding = 1,
    })

    Sound:AddToggle("SoundSpam", { Text = "Sound Spam" })

    Aim:AddToggle("AimAssist", { Text = "Toggle" })

    Aim:AddDropdown("AimTargetPart", {
        Text = "Target Part",
        Values = {"Head"},
        Default = 1,
    })

    Aim:AddToggle("AimAlways", { Text = "Always On" })
    Aim:AddToggle("FOVCircle", { Text = "FOV Circle" })

    Aim:AddSlider("AimDistance", {
        Text = "Distance",
        Default = 40,
        Min = 0,
        Max = 500,
        Rounding = 0,
    })

    Aim:AddSlider("AimSmoothness", {
        Text = "Smoothness",
        Default = 0.15,
        Min = 0,
        Max = 1,
        Rounding = 2,
    })

    Aim:AddSlider("AimFOV", {
        Text = "FOV Radius",
        Default = 150,
        Min = 0,
        Max = 500,
        Rounding = 0,
    })

    Silent:AddToggle("SilentAim", { Text = "Silent Aim" })

    Silent:AddSlider("HitboxSize", {
        Text = "Hitbox Size",
        Default = 10,
        Min = 1,
        Max = 100,
        Rounding = 0,
    })
end

-- =========================================================
-- LISTS
-- =========================================================

do
    local Whitelist = Tabs.Lists:AddLeftGroupbox("Whitelist")
    local Immunity = Tabs.Lists:AddRightGroupbox("Immunity")

    Whitelist:AddDropdown("WhitelistTarget", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Whitelist:AddDropdown("WhitelistList", {
        Text = "Add To List",
        Values = {"None"},
        Default = 1,
    })

    Whitelist:AddToggle("AutoWhitelistFriends", {
        Text = "Auto Whitelist Friends",
        Default = true,
    })

    Whitelist:AddToggle("ToggleWhitelist", {
        Text = "Toggle Whitelist",
        Default = true,
    })

    Immunity:AddDropdown("ImmunityTarget", {
        Text = "Targets",
        Values = {"---"},
        Default = 1,
    })

    Immunity:AddDropdown("ImmunityList", {
        Text = "Add To List",
        Values = {"None"},
        Default = 1,
    })

    Immunity:AddToggle("GiveAntiGrab", {
        Text = "Give Anti-Grab"
    })

    Immunity:AddToggle("GiveAntiKick", {
        Text = "Give Anti-Kick"
    })
end

-- =========================================================
-- SETTINGS
-- =========================================================

do
    local General = Tabs.Settings:AddLeftGroupbox("Settings")
    local Themes = Tabs.Settings:AddLeftGroupbox("Themes")

    local Notifications = Tabs.Settings:AddRightGroupbox("Notifications")
    local Configuration = Tabs.Settings:AddRightGroupbox("Configuration")

    General:AddSlider("MenuScale", {
        Text = "Scale",
        Default = 20,
        Min = 1,
        Max = 20,
        Rounding = 0,
    })

    General:AddToggle("CustomCursor", {
        Text = "Custom Cursor",
        Default = true,
    })

    General:AddDropdown("DPIScale", {
        Text = "DPI Scale",
        Values = {"100%"},
        Default = 1,
    })

    Themes:AddColorPicker("BackgroundColor", {
        Title = "Background color",
        Default = Color3.fromRGB(15,15,15),
    })

    Themes:AddColorPicker("MainColor", {
        Title = "Main color",
        Default = Color3.fromRGB(20,20,20),
    })

    Themes:AddColorPicker("AccentColor", {
        Title = "Accent color",
        Default = Color3.fromRGB(255,255,0),
    })

    Themes:AddColorPicker("OutlineColor", {
        Title = "Outline color",
        Default = Color3.fromRGB(70,70,70),
    })

    Themes:AddColorPicker("FontColor", {
        Title = "Font color",
        Default = Color3.fromRGB(255,255,255),
    })

    Themes:AddDropdown("FontFace", {
        Text = "Font Face",
        Values = {"Code"},
        Default = 1,
    })

    Themes:AddInput("BackgroundImage", {
        Text = "Background Image",
    })

    Themes:AddDropdown("ThemeList", {
        Text = "Theme list",
        Values = {"---"},
        Default = 1,
    })

    Themes:AddButton("Set as default", function() end)

    Themes:AddInput("CustomThemeName", {
        Text = "Custom theme name",
    })

    Themes:AddButton("Create theme", function() end)

    Themes:AddDropdown("CustomThemes", {
        Text = "Custom themes",
        Values = {"---"},
        Default = 1,
    })

    Themes:AddButton("Load theme", function() end)
    Themes:AddButton("Overwrite theme", function() end)
    Themes:AddButton("Delete theme", function() end)
    Themes:AddButton("Refresh list", function() end)
    Themes:AddButton("Set as default", function() end)
    Themes:AddButton("Reset default", function() end)

    Themes:AddLabel("Current default theme: none")

    Notifications:AddDropdown("NotificationPreset", {
        Text = "Presets",
        Values = {"Default"},
        Default = 1,
    })

    Notifications:AddInput("NotificationSound", {
        Text = "Sound ID",
        Default = "97643101798871",
    })

    Notifications:AddDropdown("NotificationSide", {
        Text = "Notification Side",
        Values = {"Right", "Left"},
        Default = 1,
    })

    Notifications:AddSlider("NotificationVolume", {
        Text = "Volume",
        Default = 1,
        Min = 0,
        Max = 10,
        Rounding = 0,
    })

    Notifications:AddButton("Test Notification", function()
        Library:Notify("Resonance", 3)
    end)

    Notifications:AddInput("NotificationTitle", {
        Text = "Title",
        Default = "Resonance",
    })

    Notifications:AddInput("NotificationDescription", {
        Text = "Description",
        Default = "Custom notification",
    })

    Notifications:AddButton("Send Custom Notification", function()
        local title = Options.NotificationTitle.Value
        local desc = Options.NotificationDescription.Value

        Library:Notify(title .. "\n" .. desc, 5)
    end)

    Configuration:AddInput("ConfigName", {
        Text = "Config name",
    })

    Configuration:AddButton("Create config", function() end)

    Configuration:AddDropdown("ConfigList", {
        Text = "Config List",
        Values = {"---"},
        Default = 1,
    })

    Configuration:AddButton("Load config", function() end)
    Configuration:AddButton("Overwrite config", function() end)
    Configuration:AddButton("Delete config", function() end)
    Configuration:AddButton("Refresh list", function() end)
    Configuration:AddButton("Set as autoload", function() end)
    Configuration:AddButton("Reset autoload", function() end)

    Configuration:AddLabel("Current autoload config: none")
end

-- =========================================================
-- THEME
-- =========================================================

Library:SetWatermarkVisibility(false)

-- Если твой Obsidian fork поддерживает изменение цветов напрямую:
-- Library.AccentColor = Color3.fromRGB(255, 255, 0)
