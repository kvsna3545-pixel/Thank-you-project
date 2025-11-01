local gui=Instance.new("ScreenGui")
gui.Name="Private Gui"
gui.Parent=game:GetService("CoreGui")

local Ui=Instance.new("Frame")
Ui.Size=UDim2.new(0,393,0,300)
Ui.Position=UDim2.new(0,180,0,0)
Ui.BackgroundColor3=Color3.fromRGB(0,0,0)
Ui.BorderColor3=Color3.new(0,255,255)
Ui.BorderSizePixel=3
Ui.Active=true
Ui.Draggable=true
Ui.Parent=gui

local TextLabel=Instance.new("TextLabel")
TextLabel.Size=UDim2.new(1,0,0,40)
TextLabel.Position=UDim2.new(0,0,0,0)
TextLabel.BackgroundColor3=Color3.fromRGB(0,0,0)
TextLabel.BorderColor3=Color3.new(0,255,255)
TextLabel.BorderSizePixel=3
TextLabel.Text="Project Segma V4 Made by kvsna3545"
TextLabel.TextColor3=Color3.new(255,255,255)
TextLabel.TextScaled=true
TextLabel.Font=Enum.Font.Legacy
TextLabel.Parent=Ui

local page=1
local perPage=12

local scripts={
{"1×1×1's Revenge. txt", "https://pastebin.com/raw/wY7CDhNC"},
{"666.txt", "https://pastebin.com/raw/yWgTKTB9"},
    {"a random skybox.txt", "https://pastebin.com/raw/HhAWecgC"},
    {"Anonymous Particles.txt", "https://pastebin.com/raw/ze0Z8dQr"},
    {"Assassin.txt", "https://pastebin.com/raw/25vEc1c9"},
    {"baseplate + tp all.txt", "https://pastebin.com/raw/dyS9xH4b"},
    {"Billboard Text", "https://pastebin.com/raw/d6yAnJkY"},
    {"Bomb vest", "https://pastebin.com/raw/tn83v6pH"},
    {"CombatKnife", "https://pastebin.com/raw/gNa5DY4r"},
    {"Control", "https://pastebin.com/raw/b1ktKM3Q"},
    {"Dev Uzi", "https://pastebin.com/raw/5AZ41mjX"},
    {"Dual Pistons", "https://pastebin.com/raw/75EcMS3n"},
{"Fencing Restore", "https://pastebin.com/raw/2Dm6cjKP"},
{"c00lkidd combo", "https://raw.githubusercontent.com/kvsna3545-pixel/c00lkidd/refs/heads/main/combo"},
{"c00lkidd decal.txt", "https://raw.githubusercontent.com/kvsna3545-pixel/c00lkidd/refs/heads/main/c00lkidd_decal"},
{"c00lkidd skybox.txt", "https://raw.githubusercontent.com/kvsna3545-pixel/c00lkidd/refs/heads/main/Skybox"},
{"c00lkidd theme", "https://raw.githubusercontent.com/kvsna3545-pixel/c00lkidd/refs/heads/main/Theme"},
{"c00lkidd theme2", "https://raw.githubusercontent.com/kvsna3545-pixel/c00lkidd/refs/heads/main/Theme2"},
{"g00byd0lan decal", "https://pastebin.com/raw/ivkM1nbX"},
{"Glock", "https://pastebin.com/raw/pw0c2x7M"},
{"Grab Knife v4", "https://raw.githubusercontent.com/kvsna3545-pixel/Scripts/refs/heads/main/Grab%20Knife%20V4.txt"},
}

local totalPages=math.ceil(#scripts/perPage)
local buttons={}
local backBtn,nextBtn

local function clearButtons()
    for _,b in ipairs(buttons)do b:Destroy()end
    buttons={}
end

local function loadPage()
    clearButtons()
    local startIdx=(page-1)*perPage+1
    local endIdx=math.min(page*perPage,#scripts)
    local btnY=50
    for i=startIdx,endIdx do
        local name,url=unpack(scripts[i])
        local idx=i-startIdx
        local col=math.floor(idx/6)
        local row=idx%6
        local btn=Instance.new("TextButton")
        btn.Size=UDim2.new(0,180,0,28)
        btn.Position=UDim2.new(0,10+col*190,0,btnY+row*32)
        btn.BackgroundColor3=Color3.fromRGB(0,0,0)
        btn.BorderColor3=Color3.new(0,255,255)
        btn.BorderSizePixel=1
        btn.Text=name
        btn.TextColor3=Color3.new(255,255,255)
        btn.TextScaled=true
        btn.Font=Enum.Font.Legacy
        btn.Parent=Ui
        btn.MouseButton1Click:Connect(function()
            if url=="particle"then
                for _,p in ipairs(game.Players:GetPlayers())do
                    local char=p.Character or p.CharacterAdded:Wait()
                    local torso=char:FindFirstChild("Torso")or char:FindFirstChild("UpperTorso")
                    if torso then
                        local pe=Instance.new("ParticleEmitter")
                        pe.Texture="http://www.roblox.com/asset/?id=127476787"
                        pe.VelocitySpread=60
                        pe.Parent=torso
                    end
                end
            else
                loadstring(game:HttpGet(url,true))()
            end
        end)
        table.insert(buttons,btn)
    end
    local yPosNav=btnY+6*32+10
    if not backBtn then
        backBtn=Instance.new("TextButton")
        backBtn.Size=UDim2.new(0,80,0,28)
        backBtn.Text="< Back"
        backBtn.TextColor3=Color3.new(255,255,255)
        backBtn.BackgroundColor3=Color3.fromRGB(0,0,0)
        backBtn.BorderColor3=Color3.new(0,255,255)
        backBtn.BorderSizePixel=1
        backBtn.Font=Enum.Font.Legacy
        backBtn.TextScaled=true
        backBtn.Parent=Ui
        backBtn.MouseButton1Click:Connect(function()
            if page>1 then
                page=page-1
                loadPage()
            end
        end)
    end
    backBtn.Position=UDim2.new(0,10,0,yPosNav)
    backBtn.Visible=page>1
    if not nextBtn then
        nextBtn=Instance.new("TextButton")
        nextBtn.Size=UDim2.new(0,80,0,28)
        nextBtn.Text="Next >"
        nextBtn.TextColor3=Color3.new(255,255,255)
        nextBtn.BackgroundColor3=Color3.fromRGB(0,0,0)
        nextBtn.BorderColor3=Color3.new(0,255,255)
        nextBtn.BorderSizePixel=1
        nextBtn.Font=Enum.Font.Legacy
        nextBtn.TextScaled=true
        nextBtn.Parent=Ui
        nextBtn.MouseButton1Click:Connect(function()
            if page<totalPages then
                page=page+1
                loadPage()
            end
        end)
    end
    nextBtn.Position=UDim2.new(1,-90,0,yPosNav)
    nextBtn.Visible=page<totalPages
end

local StigmanFroud = Instance.new("ScreenGui")
local trajectory = Instance.new("ImageLabel")
local R = Instance.new("ImageLabel")
local Earth = Instance.new("ImageLabel")
local Green = Instance.new("ImageLabel")

StigmanFroud.Name = "Stigman Froud"
StigmanFroud.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
StigmanFroud.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
StigmanFroud.DisplayOrder = 999
StigmanFroud.ResetOnSpawn = false

trajectory.Name = "trajectory"
trajectory.Parent = StigmanFroud
trajectory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trajectory.BackgroundTransparency = 1.000
trajectory.Position = UDim2.new(0.45430705, 0, 0.430432826, 0)
trajectory.Size = UDim2.new(0, 110, 0, 110)
trajectory.Image = "http://www.roblox.com/asset/?id=80500597396276"
trajectory.SliceScale = 3.000

R.Name = "R"
R.Parent = StigmanFroud
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1.000
R.Position = UDim2.new(0.45430705, 0, 0.430432826, 0)
R.Size = UDim2.new(0, 110, 0, 110)
R.ZIndex = 3
R.Image = "http://www.roblox.com/asset/?id=0"
R.SliceScale = 3.000

Earth.Name = "Earth"
Earth.Parent = R
Earth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Earth.BackgroundTransparency = 1.000
Earth.BorderColor3 = Color3.fromRGB(0, 0, 0)
Earth.BorderSizePixel = 0
Earth.Position = UDim2.new(0.404999346, 0, 0.406818181, 0)
Earth.Size = UDim2.new(0, 20, 0, 20)
Earth.ZIndex = 4
Earth.Image = "rbxassetid://0"

Green.Name = "Green"
Green.Parent = StigmanFroud
Green.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Green.BackgroundTransparency = 1.000
Green.BorderColor3 = Color3.fromRGB(0, 0, 0)
Green.BorderSizePixel = 0
Green.Position = UDim2.new(0.00499999989, 0, 0.824999988, 0)
Green.Size = UDim2.new(0, 110, 0, 110)
Green.ZIndex = 6
Green.Image = "rbxassetid://129541861152547"
Green.ImageTransparency = 1.000

-- Animation for trajectory (rotating)
local function AARC_fake_script()
	local script = Instance.new('LocalScript', trajectory)
	local img = script.Parent
	local sonic = script.Parent
	
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
	
	while true do
		wait(0.01)
		sonic.Rotation = sonic.Rotation + 0.3
	end
end
coroutine.wrap(AARC_fake_script)()

-- Animation for Earth (orbiting)
local function LQERQ_fake_script()
	local script = Instance.new('LocalScript', Earth)
	local Angle = 0
	local AngleIncrement = 0.02
	local OriginPos = script.Parent.Position
	local Distance = 55
	
	while wait() do
		Angle = Angle + AngleIncrement
		local dirX = math.cos(Angle)
		local dirY = math.sin(Angle)
		script.Parent.Position = OriginPos + UDim2.new(0, dirX * Distance, 0, dirY * Distance)
	end
end
coroutine.wrap(LQERQ_fake_script)()

-- Animation for R (tween in and down)
local function XBQODE_fake_script()
	local script = Instance.new('LocalScript', R)
	local img = script.Parent
	
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
end
coroutine.wrap(XBQODE_fake_script)()

-- Blinking Green effect
local function NSHDR_fake_script()
	local script = Instance.new('LocalScript', Green)
	local Tween = game:GetService("TweenService")
	local Greenfn = script.Parent
	wait(2)
	while true do
		local TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 0})
		TranspncyTween:Play()
		wait(0.3)
		TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 1})
		TranspncyTween:Play()
		wait(0.3)
		TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 0})
		TranspncyTween:Play()
		wait(0.3)
		TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 1})
		TranspncyTween:Play()
		wait(4)
	end
end
coroutine.wrap(NSHDR_fake_script)()

-- Tweening animation for Green (initial move)
local function UDIRPT_fake_script()
	local script = Instance.new('LocalScript', Green)
	local img = script.Parent
	
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
end
coroutine.wrap(UDIRPT_fake_script)()

-- Output welcome and game name
local function WGFAMY_fake_script()
	local script = Instance.new('LocalScript', StigmanFroud)
	local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	
	print("Loaded At", GetName.Name)
	wait(0.1)
	print("Welcome,", game.Players.LocalPlayer.Name)
end

loadPage()
