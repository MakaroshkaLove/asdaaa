-- Простой красивый GUI для Roblox, работает в Solara
-- Автор: MakaroshkaLove

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Удаляем старый GUI если есть
if playerGui:FindFirstChild("ChilliSimpleGUI") then
    playerGui.ChilliSimpleGUI:Destroy()
end

-- Основной экран
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ChilliSimpleGUI"
screenGui.Parent = playerGui

-- Кнопка открытия GUI
local openButton = Instance.new("TextButton")
openButton.Name = "OpenButton"
openButton.Size = UDim2.new(0, 50, 0, 50)
openButton.Position = UDim2.new(0, 20, 0, 20)
openButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
openButton.Text = "☰"
openButton.TextColor3 = Color3.fromRGB(255,255,255)
openButton.TextScaled = true
openButton.Font = Enum.Font.GothamBold
openButton.Parent = screenGui

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(0, 12)
openCorner.Parent = openButton

-- Основной фрейм GUI
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 400, 0, 350)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -175)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 16)
mainCorner.Parent = mainFrame

-- Заголовок
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
title.BorderSizePixel = 0
title.Text = "Chilli Hub GUI"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 16)
titleCorner.Parent = title

-- Кнопка закрытия
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -40, 0, 10)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
closeBtn.BorderSizePixel = 0
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = title

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeBtn

-- Пример кнопок внутри GUI
local function createBtn(text, color, posY)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.8, 0, 0, 40)
    btn.Position = UDim2.new(0.1, 0, 0, posY)
    btn.BackgroundColor3 = color
    btn.BorderSizePixel = 0
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamSemibold
    btn.Parent = mainFrame
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 8)
    btnCorner.Parent = btn
    
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = color:Lerp(Color3.fromRGB(255,255,255), 0.1)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = color
    end)
    return btn
end

local btn1 = createBtn("Stealer", Color3.fromRGB(100, 150, 255), 70)
local btn2 = createBtn("Helper", Color3.fromRGB(255, 150, 100), 120)
local btn3 = createBtn("Player", Color3.fromRGB(150, 255, 100), 170)
local btn4 = createBtn("Finder", Color3.fromRGB(255, 255, 100), 220)
local btn5 = createBtn("Server", Color3.fromRGB(200, 100, 255), 270)
local btn6 = createBtn("Discord!", Color3.fromRGB(100, 255, 255), 320)

-- Функционал открытия/закрытия GUI
openButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = true
    openButton.Visible = false
end)

closeBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    openButton.Visible = true
end)

-- GUI готов к использованию!