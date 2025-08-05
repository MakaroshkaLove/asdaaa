-- Минималистичный светлый GUI для Roblox (максимально похож на твой скрин)
-- Автор: MakaroshkaLove

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("MinimalChilliGUI") then
    playerGui.MinimalChilliGUI:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "MinimalChilliGUI"
gui.Parent = playerGui

gui.ResetOnSpawn = false

-- Основной контейнер
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 500, 0, 350)
main.Position = UDim2.new(0.5, -250, 0.5, -175)
main.BackgroundColor3 = Color3.fromRGB(235, 238, 232)
main.BorderSizePixel = 0
main.Visible = true
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 18)
mainCorner.Parent = main

-- Левая панель с вкладками
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 120, 1, 0)
sidebar.Position = UDim2.new(0, 0, 0, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(225, 228, 220)
sidebar.BorderSizePixel = 0
sidebar.Parent = main

local sidebarCorner = Instance.new("UICorner")
sidebarCorner.CornerRadius = UDim.new(0, 18)
sidebarCorner.Parent = sidebar

-- Заголовок сверху
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Steal a Brainrot - Chilli Hub - By MakaroshkaLove"
title.TextColor3 = Color3.fromRGB(60, 60, 60)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = main

title.ZIndex = 2

-- Крупный заголовок вкладки
local tabTitle = Instance.new("TextLabel")
tabTitle.Size = UDim2.new(1, -120, 0, 60)
tabTitle.Position = UDim2.new(0, 120, 0, 60)
tabTitle.BackgroundTransparency = 1
tabTitle.Text = "Tab"
tabTitle.TextColor3 = Color3.fromRGB(40, 40, 40)
tabTitle.TextXAlignment = Enum.TextXAlignment.Left
tabTitle.TextYAlignment = Enum.TextYAlignment.Top
tabTitle.TextScaled = true
tabTitle.Font = Enum.Font.GothamBold
tabTitle.Parent = main

tabTitle.ZIndex = 2

-- Список вкладок (иконка + текст)
local tabs = {
    {"Main", "rbxassetid://7734053495"},
    {"Stealer", "rbxassetid://7734053495"},
    {"Helper", "rbxassetid://7734053495"},
    {"Player", "rbxassetid://7734053495"},
    {"Finder", "rbxassetid://7734053495"},
    {"Server", "rbxassetid://7734053495"},
    {"Discord!", "rbxassetid://7734053495"}
}

local selectedTab = 1
local tabButtons = {}

for i, tab in ipairs(tabs) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, 40 + (i-1)*45)
    btn.BackgroundColor3 = i == selectedTab and Color3.fromRGB(210, 215, 205) or Color3.fromRGB(225, 228, 220)
    btn.BorderSizePixel = 0
    btn.Text = "       "..tab[1]
    btn.TextColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.TextScaled = true
    btn.Font = Enum.Font.Gotham
    btn.Parent = sidebar
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 10)
    btnCorner.Parent = btn
    
    -- Иконка
    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.new(0, 28, 0, 28)
    icon.Position = UDim2.new(0, 6, 0.5, -14)
    icon.BackgroundTransparency = 1
    icon.Image = tab[2]
    icon.Parent = btn
    icon.ZIndex = 2
    
    btn.MouseButton1Click:Connect(function()
        for j, b in ipairs(tabButtons) do
            b.BackgroundColor3 = Color3.fromRGB(225, 228, 220)
        end
        btn.BackgroundColor3 = Color3.fromRGB(210, 215, 205)
        selectedTab = i
        tabTitle.Text = tab[1]
    end)
    table.insert(tabButtons, btn)
end

-- Кнопка закрытия
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 32, 0, 32)
closeBtn.Position = UDim2.new(1, -40, 0, 8)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = main

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeBtn

closeBtn.MouseButton1Click:Connect(function()
    main.Visible = false
end)

-- Кнопка открытия (появляется, когда GUI закрыт)
local openBtn = Instance.new("TextButton")
openBtn.Size = UDim2.new(0, 44, 0, 44)
openBtn.Position = UDim2.new(0, 20, 0, 20)
openBtn.BackgroundColor3 = Color3.fromRGB(80, 170, 255)
openBtn.Text = "☰"
openBtn.TextColor3 = Color3.fromRGB(255,255,255)
openBtn.TextScaled = true
openBtn.Font = Enum.Font.GothamBold
openBtn.Parent = gui
openBtn.Visible = false

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(0, 12)
openCorner.Parent = openBtn

openBtn.MouseButton1Click:Connect(function()
    main.Visible = true
    openBtn.Visible = false
end)

closeBtn.MouseButton1Click:Connect(function()
    main.Visible = false
    openBtn.Visible = true
end)

-- GUI готов! Минимализм, вкладки, иконки, светлый стиль.