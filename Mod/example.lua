local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/Library.lua"
))()

local Window = Library:New({
    Size = UDim2.new(0, 600, 0, 500)
})

--// Tabs

local Main = Window:Page({
    Name = "Main",
    Icon = "rbxassetid://6023426921"
})

local Visuals = Window:Page({
    Name = "Visuals",
    Icon = "rbxassetid://6034684930"
})

local Settings = Window:Page({
    Name = "Settings",
    Icon = "rbxassetid://6031280882"
})

--// Main

local General = Main:Section({
    Name = "General",
    Side = "Left",
    Size = 220
})

General:Toggle({
    Name = "Enabled",
    Default = true,
    Flag = "enabled",
    Callback = function(value)
        print("Enabled:", value)
    end
})

General:Slider({
    Name = "Amount",
    Minimum = 0,
    Maximum = 100,
    Default = 50,
    Decimals = 1,
    Ending = "%",
    Flag = "amount",
    Callback = function(value)
        print("Amount:", value)
    end
})

General:Button({
    Name = "Test Button",
    Callback = function()
        print("Clicked!")
    end
})

local Options = Main:Section({
    Name = "Options",
    Side = "Right",
    Size = 220
})

Options:List({
    Name = "Mode",
    Options = {
        "Default",
        "Fast",
        "Smooth",
        "Custom"
    },
    Default = "Default",
    Flag = "mode",
    Callback = function(value)
        print("Mode:", value)
    end
})

Options:Colorpicker({
    Name = "Accent",
    Default = Color3.fromRGB(207, 227, 0),
    Flag = "accent",
    Callback = function(color)
        Library:ChangeAccent(color)
    end
})

--// Visuals

local Display = Visuals:Section({
    Name = "Display",
    Side = "Left",
    Size = 220
})

Display:Toggle({
    Name = "Interface",
    Default = true,
    Flag = "interface"
})

Display:Toggle({
    Name = "Notifications",
    Default = true,
    Flag = "notifications"
})

Display:Slider({
    Name = "Scale",
    Minimum = 50,
    Maximum = 150,
    Default = 100,
    Decimals = 0,
    Ending = "%",
    Flag = "scale"
})

local VisualOptions = Visuals:Section({
    Name = "Options",
    Side = "Right",
    Size = 220
})

VisualOptions:List({
    Name = "Style",
    Options = {
        "Default",
        "Minimal",
        "Compact"
    },
    Default = "Default",
    Flag = "style"
})

VisualOptions:Colorpicker({
    Name = "Theme Color",
    Default = Color3.fromRGB(207, 227, 0),
    Flag = "theme_color",
    Callback = function(color)
        Library:ChangeAccent(color)
    end
})

--// Settings

local Interface = Settings:Section({
    Name = "Interface",
    Side = "Left",
    Size = 220
})

Interface:Button({
    Name = "Hide Window",
    Callback = function()
        Library:SetOpen(false)
    end
})

Interface:Button({
    Name = "Show Window",
    Callback = function()
        Library:SetOpen(true)
    end
})

Interface:Toggle({
    Name = "Animations",
    Default = true,
    Flag = "animations"
})