-- Chilli Hub GUI для Steal a Brainrot
-- Автор: Твой ник

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Steal a Brainrot - Chilli Hub - By ТвойНик",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "ChilliHub"
})

-- Вкладка Main
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://7734053495", -- Можешь заменить на свою иконку
    PremiumOnly = false
})
MainTab:AddLabel("Tab")

-- Вкладка Stealer
local StealerTab = Window:MakeTab({
    Name = "Stealer",
    Icon = "rbxassetid://7734053495",
    PremiumOnly = false
})

-- Вкладка Helper
local HelperTab = Window:MakeTab({
    Name = "Helper",
    Icon = "rbxassetid://7734053495",
    PremiumOnly = false
})

-- Вкладка Player
local PlayerTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://7734053495",
    PremiumOnly = false
})

-- Вкладка Finder
local FinderTab = Window:MakeTab({
    Name = "Finder",
    Icon = "rbxassetid://7734053495",
    PremiumOnly = false
})

-- Вкладка Server
local ServerTab = Window:MakeTab({
    Name = "Server",
    Icon = "rbxassetid://7734053495",
    PremiumOnly = false
})

-- Вкладка Discord
local DiscordTab = Window:MakeTab({
    Name = "Discord!",
    Icon = "rbxassetid://7734053495",
    PremiumOnly = false
})

-- Пример добавления кнопки во вкладку Main
MainTab:AddButton({
    Name = "Пример кнопки",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Уведомление",
            Content = "Кнопка нажата!",
            Image = "rbxassetid://7734053495",
            Time = 3
        })
    end
})

-- Можешь добавлять свои функции в каждую вкладку по аналогии!