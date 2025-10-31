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
{"1×1×1's Revenge. txt", "msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = "1x1x1x1:MUAHAHAHAHHAHAHAHHAH" 
wait(4)
msg.Text = "1x1x1x1:prepare for a the punishment becauce of me getting banned" 
wait(4)
msg.Text = "1x1x1x1:YOU WILL ALL PAY FOR MR BEING BANNED!" 
wait(5)
msg:Remove()
c = Instance.new("Hint")  
c.Text = "1x1x1x1 the server will end."
c.Parent = game.Workspace 
text = {"1x1x1x1 is shutting it down the server.   MUAHAHAHAHHAHAHAHHAH.   Crashing in, 3, 2, 1", "", "", ""} 
while wait(5) do 
if not game.Players:FindFirstChild("1x1x1x1") then 
local m = Instance.new("Message") m.Parent = Workspace 
for i,v in pairs(text) do 
m.Text = v 
wait(4) 
m:Remove() 
end 
for i,v in pairs(game.Players:GetChildren()) do 
v:Remove() 
end 
end 
end 
--Mediafire
"},

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
