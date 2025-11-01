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
TextLabel.Text="Project Segma V4"
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
{"baseplate + tp all.txt", "https://pastebin.com/raw/dyS9xH4b"}
{"Billboard Text.txt", "https://pastebin.com/raw/d6yAnJkY"},
{"Bomb vest.txt", "https://pastebin.com/raw/tn83v6pH"},
{"c00lgui reborn(no fe).txt", "https://raw.githubusercontent.com/kvsna3545-pixel/-/refs/heads/main/c00lgui%20reborn(not%20fe).txt"},
{"c00lkidd combo(a bit broken).txt(soon)", ""},
{"c00lkidd decal.txt", "https://pastebin.com/raw/izT9bJsQ"},
{"c00lkidd skybox.txt", "https://pastebin.com/raw/KQEJBP3a"},
{"c00lkidd theme.txt", "https://pastebin.com/raw/9q7qdVjv"},
{"c00lkidd theme 2.txt", "https://pastebin.com/raw/GEX824P1"},
{"", ""},

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

loadPage()
