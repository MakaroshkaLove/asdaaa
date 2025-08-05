-- Минималистичный open source GUI для Roblox (работает в Solara)
-- Стиль и структура взяты из популярных публичных GUI

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Удаляем старый GUI
if playerGui:FindFirstChild("OpenSourceSimpleGUI") then
    playerGui.OpenSourceSimpleGUI:Destroy()
end

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "OpenSourceSimpleGUI"
gui.Parent = playerGui

-- Кнопка открытия
local openBtn = Instance.new("TextButton")
openBtn.Size = UDim2.new(0, 40, 0, 40)
openBtn.Position = UDim2.new(0, 20, 0, 20)
openBtn.BackgroundColor3 = Color3.fromRGB(80, 170, 255)
openBtn.Text = "☰"
openBtn.TextColor3 = Color3.new(1,1,1)
openBtn.TextScaled = true
openBtn.Font = Enum.Font.GothamBold
openBtn.Parent = gui

-- Главное окно
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 300, 0, 220)
main.Position = UDim2.new(0.5, -150, 0.5, -110)
main.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
main.Visible = false
main.Parent = gui

-- Заголовок
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
title.Text = "Open Source GUI"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = main

-- Кнопка закрытия
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = main

-- Пример кнопок
local function addButton(text, posY, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.8, 0, 0, 36)
    btn.Position = UDim2.new(0.1, 0, 0, posY)
    btn.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    btn.Text = text
    btn.TextColor3 = Color3.new(1,1,1)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamSemibold
    btn.Parent = main
    btn.MouseButton1Click:Connect(callback)
    return btn
end

addButton("Пример 1", 60, function()
    title.Text = "Нажата кнопка 1"
end)
addButton("Пример 2", 110, function()
    title.Text = "Нажата кнопка 2"
end)
addButton("Пример 3", 160, function()
    title.Text = "Нажата кнопка 3"
end)

-- Открытие/закрытие GUI
openBtn.MouseButton1Click:Connect(function()
    main.Visible = true
    openBtn.Visible = false
end)
closeBtn.MouseButton1Click:Connect(function()
    main.Visible = false
    openBtn.Visible = true
end)
