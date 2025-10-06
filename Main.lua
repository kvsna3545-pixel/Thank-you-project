game.StarterGui:SetCore("DevConsoleVisible", true) 
wait(0.1)
print("Look for Roblox bypass.")
wait(1)
print("Look for Roblox bypass..")
wait(1)
print("Found Roblox bypass!!!!")
wait(5)
print("Loading bypass...")
wait(4) 
print("Download bypass complete!!!!")
wait(2) 
print("Loading Thank you Project Gui v7.10") 
wait(3) 
print("Downloading script...") 
wait(3) 
print("[0%_________]") 
wait(0.5) 
print("[5%_________]")
wait(0.5) 
print("[10%________]")
wait(0.5) 
print("[15%________]")
wait(0.5)
print("[#20%_______]")
wait(0.5)
print("[#25%_______]")
wait(0.5)
print("[##30%______]")
wait(0.5)
print("[##35%______]")
wait(0.5)
print("[###40%_____]")
wait(0.9)
print("[####60%____]")
wait(1.4)
print("💥「[########100%]」💥")
wait(0.9)
print("💥💥💥Downloading Complete💥💥💥") 
wait(1) 
print("################################")
wait(1)
print("########### 〔welcome〕 #########") 
wait(1)
print("#########〔by kvsna3545〕########")
wait(1)
print("################################")
wait(1.5) 
print("Let's go")
wait(0.8)
game.StarterGui:SetCore("DevConsoleVisible", false)

local gui = Instance.new("ScreenGui")
gui.Name = "Private Gui"
gui.Parent = game:GetService("CoreGui")

local Ui = Instance.new("Frame")
Ui.Size = UDim2.new(0, 393, 0, 300)
Ui.Position = UDim2.new(0, 180, 0, 0)
Ui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ui.BorderColor3 = Color3.new(1, 999, 1)
Ui.BorderSizePixel = 3
Ui.Active = true
Ui.Draggable = true
Ui.Parent = gui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0, 42)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(1, 999, 1)
TextLabel.BorderSizePixel = 3
TextLabel.Text = "Thank you Project Upgrade V.10.9"
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Ui

local page = 1
local perPage = 12
local scripts = {
    {"1x1 HAX MINI GUI", "https://pastefy.app/4U9m0vuN/raw?part=1x1x1x1x1_hax%20Gui%20mini%20edition"},
    {"OUCH SIMSOMP SPAM", "https://pastefy.app/h6fhUC6z/raw"},
    {"SAMSUNG NOTE", "https://pastefy.app/dA68xt1p/raw"},
    {"PROJECT ZAGA", "https://pastefy.app/rMyVKrO6/raw"},
    {"PRIVATE 1X1 V7.1.0", "https://pastefy.app/tsPrm5Ky/raw"},
    {"PROJECT SEGMA V2", "https://pastefy.app/EUwYT4gN/raw"},
    {"SEGMA V4", "https://pastefy.app/a2VxTbDs/raw"},
    {"project eluaria", "https://pastefy.app/TvLHaW8s/raw"},
    {"PROJECT DUCK UTG", "https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/projetduck.lua"},
    {"SS AND FEBYPASS", "https://pastebin.com/raw/rLZTaE8s"},
    {"P00NGUI BY REDKID", "https://pastefy.app/LH5mdWwm/raw"},
    {"1X1X1X1HAX GUI V2", "https://pastefy.app/MYWHQPCX/raw?part=1x1x1x1x1_HAX%20Gui%20V2"},
    {"Mang0 gui", "https://pastebin.com/raw/6zDKS2TV"},
    {"EXTERNAL 1!1!", "https://pastefy.app/4GLMKcft/raw"},
    {"9/11 PLANE", "https://pastebin.com/raw/5saVhNKb"},
    {"GIANT SIZE DESTROYER", "https://pastebin.com/raw/GqfUpdX6"},
    {"CHARA", "https://pastebin.com/raw/g8vRx0wa"},
    {"Dominant executor v5.0.2 v2", "https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/dominatnee.txt"},
    {"RC7 2016", "https://fromhatai.neocities.org/Private/Rc7.lua"},
    {"SIGMA GUI PRIVATE", "https://pastebin.com/raw/78fUTxZV"},
    {"PROJECT STIGMA  LUA", "https://raw.githubusercontent.com/C-Dr1ve/Executor-Remakes-In-Lua/refs/heads/main/Remakes/Stigma_Revision_0.lua"},
    {"SHIBA OLD", "https://pastebin.com/raw/HrE2dKSD"},
    {"PROJECT SLIGMA", "https://pastefy.app/QcuBoc7w/raw"},
    {"PROJECT TWO BFDI", "https://pastebin.com/raw/3xHHRpsV"},
    {"SHELDONI BY Spawn BLOCK V2", "https://pastebin.com/raw/PgxctSd6"},
    {"RC7 GUI", "https://pastebin.com/raw/DV1v0xnt"},
    {"TC0 GUI Style k00pgui", "https://pastefy.app/dWdNO8lL/raw"},
    {"AC0RN GUI INCIDENT", "https://pastefy.app/ONNKneRS/raw"},
    {"GOKU WHITE", "https://pastebin.com/raw/xtMhKkTB"},
    {"MLG GREEN EYE", "https://pastebin.com/raw/xKeeFngN"},
    {"PEE LUA", "https://raw.githubusercontent.com/gitezgitgit/Pee/refs/heads/main/PeeScript.lua"},
    {"DOMINANT 1.0.0.0 BY JOX", "https://pastefy.app/Ysng6BeD/raw?part= Dominant%20Executor%20by%20 jox%20inspire%20in%20epik"},
    {"HEROBRINE JUMPSCARE", "https://pastefy.app/Rfpe0mkO/raw"},
    {"EPIKGUY V1🤑", "https://pastebin.com/raw/MJhyLPu9"},
    {"JOX V5.6 GUI", "https://pastefy.app/3ZSMrM2X/raw"},
    {"RURUXPLOIT V7.0","https://pastebin.com/raw/zQGANnnQ"},
    {"1X1X1 FE GUI", "https://raw.githubusercontent.com/GRAVEBUSTER0/GRAVEBUSTER0/main/New.lua"},
    {"G00BY EXE", "https://pastefy.app/LgKOzHYy/raw"},
    {"N#ZY MAP","https://scriptblox.com/raw/Universal-Script-Mmaan-44983"},
    {"TOWER","https://pastebin.com/raw/R8bdDRSb"},
    {"ALLAH ARABIC MAP", "https://pastebin.com/raw/NNp1NJKT"},
    {"COFFE Map","https://web.archive.org/web/20230331215846/https://pastebin.com/raw/HtUABLMJ"},
    {"GRANDOSLA","https://pastefy.app/Kql9VClT/raw"},
    {"SUGMA_V1","https://pastebin.com/raw/tE127sKS"},
    {"Stummy Guns","https://pastebin.com/raw/3XPaYv08"},
    {"bipolaria","https://pastebin.com/raw/tE127sKS"},
    {"NEXUS X","https://fromhatai.neocities.org/Private/NexusX.lua"},
    {"EPIKGUY V1 scripts 👉","a"},
    {"Elsyian Executor","https://pastebin.com/raw/CsFAQyXr"},
    {"Anonymous Particlez","particle"},
    {"NOOB GIANT CANNONER","https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Cannoneer%20Noob.txt"},
    {"SSP","https://pastefy.app/t2gUwfXy/raw"},
    {"PROJECT BALLER","https://gist.githubusercontent.com/gagaamza/d5c91e99f7f31e450817c73de16f7e38/raw/855e5a40280cbeb5369d6c8c22243b0c35e9e735/gistfile1.txt"},
    {"PROJECT TEGMA","https://pastefy.app/iF7TCeZw/raw"},
    {"PROJECT 007N7","https://pastebin.com/raw/v0hzsfEV"},
    {"PROJECT 007n7 TXT","https://pastebin.com/raw/fYQCCQ3v"},
    {"Super project by g00by666","https://raw.githubusercontent.com/g00byd0lanxdd/team-super-secret/refs/heads/main/team%20super%20secret"},
    {"PROJECT 3XEN0","https://raw.githubusercontent.com/3xen0kidd/ProjextLigma/refs/heads/main/obfuscated_script-1748044783577.lua.txt"},
    {"SHIBA","https://pastebin.com/raw/HrE2dKSD"},
    {"DOMINANT V5.0.1","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/dominatv5.0.1.txt"},
    {"PROJECT SONIC","https://raw.githubusercontent.com/Hanif290/YoThereSkibidiSigma68/refs/heads/main/Yoshi681SkibidiBoy"},
    {"C00LGUI BUT GOOD","https://raw.githubusercontent.com/hyperionhax/c00lgui/refs/heads/main/CoolGui.lua"},
    {"TOPK3K 0.8","https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/main/%5BGUI%5D%20T0PK3K%200.8"},
    {"MR BEAN ADMIN SS","https://raw.githubusercontent.com/Test4267/mrbean/refs/heads/main/hh"},
    {"MOUSTER RED EPIC","https://pastebin.com/raw/ZaGXVyhj"},
    {"Arceus x exe","https://rawscripts.net/raw/Universal-Script-Arceus-x-gui-script-22768"},
    {"Private Gui 1.35","https://raw.githubusercontent.com/Hanif290/DigsaeyAiijjllnvv/refs/heads/main/Aiisisndndsn"},
    {"Super Private Gui by Sigmaz","https://raw.githubusercontent.com/Hanif290/SigmaHubV2/refs/heads/main/SigmaHubV2"},
    {"Private Gui by Hanif","https://raw.githubusercontent.com/Hanif290/SigmaHub/refs/heads/main/SigmaHub"},
    {"Sigma Gui (Private GUI)","https://pastes.io/raw/private-53"},
    {"scripts no of EPIKGUY👉","a"},
    {"Private Gui by 005n5n77 1.5","https://pastebin.com/raw/9XSYjVrm"},
    {"1x1x1x1x1 Super Private Gui v5.40","https://pastebin.com/raw/ERRk4rvM"},
    {"1x1x1x1x1 Ultimate Private Gui v7.10", "https://pastefy.app/tsPrm5Ky/raw"},
    {"Testing Hub By QnDx aka Polpy_Kid","https://pastebin.com/raw/ERRk4rvM"},
    {"sugma_v1","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Sugma%20V1.txt"},
    {"Project LuaCore Serverside","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/yesking"},
    {"R15 to R6","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/AOIWruw823rpo8n30"},
    {"Project LuaCore SS","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Project%20LuaCore%20SS"},
    {"Prison Life Hub By Shedletsky","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Shed%20Prison%20Hax"},
    {"Anonymous Gui Reborn","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/Anonymous%20Reborn%20By%2007n7z"},
    {"LuaMayGay V2 Made By 07n7z","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/LuaMayGayV2.txt"},
    {"LuaMayGay Made By LuaCore","https://raw.githubusercontent.com/sigmaballs4141/asd/refs/heads/main/LuaMayGay%204"},
    {"Erased_Luah4x Gui Private","https://pastebin.com/raw/yARPDt3k"},
    {"Thomas The Dank Engine","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/Thomas"},
    {"John Doe SS","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/johndoeSS.txt"},
    {"Nazz Gui","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/nazz%20gui.txt"},
    {"Polaria By 00de0l [UPDATED]","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/pol%20(2).txt"},
    {"Syntex Backdoor V1.2.0","https://raw.githubusercontent.com/etgaby33/sb1.2.0/refs/heads/main/sb1.2.0lua.txt"},
    {"Dominat v5.0.1","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/dominatv5.0.1.txt"},
    {"c00lgui","https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BGUI%5D%20c00lgui"},
    {"Project Lua","https://rawscripts.net/raw/Universal-Script-Project-Lua-Inspired-by-Project-Ligma-26224"},
    {"Project Ligma", "https://rawscripts.net/raw/Universal-Script-Project-Ligma-REMADE-31235"},
    {"Grab Knife v1", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V1.lua"},
    {"Grab Knife v2", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V2.lua"},
    {"Grab Knife v3","https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"},
    {"Grab Knife v4", "https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V4.txt"},
    {"Project Euphoria [Old]","https://raw.githubusercontent.com/TEST19983/Realrhejrj/refs/heads/main/Refjf"},
    {"Rc7 Cloud","https://pastebin.com/raw/DK9PK8Xu"},
    {"Bladed Lightning Dark Titan","https://raw.githubusercontent.com/gitezgitgit/Dark-Titan/refs/heads/main/DARK%20TITAN%20SCRIPT%20SUPER%20RARE.txt"},
    {"Hatai Gui","https://gist.githubusercontent.com/hataifnx/009dc18d58f8f7044fbc08c353f2f058/raw/9224a43566424ec2edd2f9286855acf004fc4c54/Hatai%2520Gui"},
    {"Dreambull Gui","https://rawscripts.net/raw/Universal-Script-FE-Bypass-idk-32121"},
    {"Jeff The Killer Jumpscare","https://rawscripts.net/raw/Universal-Script-Jeff-The-Killer-JumpScare-27384"},
    {"Shedletsky","https://pastebin.com/raw/QaGn1ekv"},
    {"Mr Bean Admin","https://raw.githubusercontent.com/Test4267/mrbean/refs/heads/main/hh"},
    {"Ro-xploit VH","https://gist.githubusercontent.com/hataifnx/0b72277731e6bc6a0f05ef90aa4ba9ab/raw/a5ebe0184ca9acbf8af79f3c0e943f3457b95247/Ro-xploit%2520vh"},
    {"External GU1! By Anonymous XR","https://pastefy.app/4GLMKcft/raw"},
    {"SG GUI RED EDITION","https://raw.githubusercontent.com/gitezgitgit/SG-GUI-RED-EDITION/refs/heads/main/FixedVersion"},
    {"SG GUI BLUE EDITION", "https://raw.githubusercontent.com/gitezgitgit/SG-GUI-COLOR-EDITIONS/refs/heads/main/Blue%20Edition"},
    {"Robot","https://pastefy.app/ur8n4dc6/raw"},
    {"Titan","https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"},
    {"Big Smoke","https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20Big%20Smoke"},
    {"Lua Hammer","https://pastefy.app/Nh7FVtvC/raw"},
    {"Dual Tentacle Railgun Demon Monster","https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment"},
    {"Nebula Star Glitcher","https://pastebin.com/raw/j09BnGB3"},
    {"John Doe","https://rawscripts.net/raw/Client-Replication-Join-doe-script-uploaded-by-gojohdkaisenkt-me-34101"},
    {"AK-47","https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ak47"},
    {"Minecraft Steve","https://raw.githubusercontent.com/Test4267/steve/refs/heads/main/rare"},
    {"Proximity Hub Max 15 [Proximity6H]","https://raw.githubusercontent.com/HyperionV8/Proximity-Private-Hub/refs/heads/main/obfuscated_script-1745069419608.lua.txt"},
    {"Private GUI By 00de0l","loadstring(game:HttpGet(\"https://ghostplayer352.github.io/Authorization/\"))()Ioad(\"0d730785a30393bb8bc13e9a8d72a0d3\")"},
    {"Private GUI By 00de0l [UPDATED]","https://pastefy.app/cVm0LBiJ/raw"},
    {"3xen0kidd GUI [3xen0guibyl1000l]", "https://pastebin.com/raw/MMUX0irp"},
    {"MLG Particles", "https://pastebin.com/raw/ZPzjyL1M"},
    {"Spookyify", "https://pastefy.app/OvBb8y2T/raw"},
    {"1x1x1x1's FE GUI (Client-Sided)","https://raw.githubusercontent.com/MrWitzbold/1x1x1x1-Gui/refs/heads/main/main.lua"},
    {"Elysian 2.0 GUI (Client-Sided)","https://raw.githubusercontent.com/MrWitzbold/Elysian-2.0-GUI/refs/heads/main/main.lua"},
    {"Bill Cipher GUI (Client-Sided)","https://raw.githubusercontent.com/MrWitzbold/Bill-Cipher-GUI/refs/heads/main/Bill%20Cipher%20GUI%20(Client-Sided).lua"},
    {"RC7 Reawakened (Cilent-Sided)", "https://raw.githubusercontent.com/MrWitzbold/RC7_GUI/refs/heads/main/main.lua"},
    {"Sirhurt GUI (Cilent-Sided)", "https://raw.githubusercontent.com/MrWitzbold/sirhurt_GUI/refs/heads/main/main.lua"},
    {"Good Cop Bad Cop", "https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"},
    {"Gaster Hands", "https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/GasterHands.txt"},
    {"Ban Hammer", "https://raw.githubusercontent.com/nicolasbarbosa323/ban-hammer/refs/heads/main/ban"},
    {"Xester", "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"},
    {"Grakkeda", "https://raw.githubusercontent.com/nicolasbarbosa323/grakkeda/refs/heads/main/Roblox%20Genkadda%20omega%20leaked.txt"},
    {"Spectrum Glitcher", "https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"},
    {"Kirito Blades", "https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/Kirito%20Blades.txt"},
    {"The Angel", "https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"},
    {"Vereus", "https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"},
    {"SpiderBot", "https://pastebin.com/raw/XNVWznPH"},
    {"Ravanger Claws", "https://raw.githubusercontent.com/nicolasbarbosa323/sin-dragon/refs/heads/main/reevenge%20hands.txt"},
    {"Kitchen Gun", "https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"},
    {"Suicide Gun", "https://pastebin.com/raw/TQGaAivj"},
    {"Touch Me For Boom", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Touch%20Me%20For%20Boom.txt"},
    {"Master Hand", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/MasterHand.txt"},
    {"Green Tank", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Green%20Tank.txt"},
    {"Bridge Tool", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Bridge%20Tool.txt"},
    {"PipeBomb Launcher", "https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/PipeBomb%20Launcher.txt"},
    {"Spawn KillBot", "https://raw.githubusercontent.com/GooberDoesStuff/RandomClientRep/refs/heads/main/Killbot.lua"},
    {"D!CK_Gun", "https://pastefy.app/Tq7G80Tr/raw"},
    {"S#s Neko", "https://raw.githubusercontent.com/GooberDoesStuff/RandomClientRep/refs/heads/main/Neko.lua"},
    {"Yellow Man", "https://pastebin.com/raw/funfBi9a"},
    {"True Hero ULTIMATE", "https://pastebin.com/raw/m7r4Qeu1"},
    {"Warhammer", "https://pastebin.com/raw/XcpT3qyM"},
    {"Neko Knuckles", "https://pastebin.com/raw/gYt5K4k5"},
    {"1x1x1x1x1", "https://rawscripts.net/raw/Natural-Disaster-Survival-1X1X1X1-GUI-PLS-LIKE-11504"},
    {"Project Hacker 1.0", "https://raw.githubusercontent.com/kvsna3545-pixel/Hacker_Project_1/refs/heads/main/Project_Hacker_1.0"},
    {"fps boost", "https://raw.githubusercontent.com/JoshzzAlteregooo/JoshzzFpsBoosterVersion3/refs/heads/main/JoshzzNewFpsBooster"},
    {"spawn1020", "https://pastebin.com/raw/PgxctSd6"},
    {"scipt op", "https://pastefy.app/GiEm6AH8/raw"},
    {"hacking", "https://raw.githubusercontent.com/kvsna3545-pixel/Thank-you-project/refs/heads/main/1"},
    {"project204433514", "https://raw.githubusercontent.com/gitezgitgit/Project-2044033514/refs/heads/main/Project%2044033514.lua.txt"},
    {"project ligma Remake", "https://raw.githubusercontent.com/gitezgitgit/Project-Ligma-Remake/refs/heads/main/ProjectLigmaRemakeObfuscated.txt"},
    {"Grandosla", "https://pastefy.app/Kql9VClT/raw"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", ""},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT.", "a"},
    {"name script", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
    {"NAME SCRIPT", "a"},
}

local totalPages = math.ceil(#scripts / perPage)
local buttons = {}
local backBtn, nextBtn

local function clearButtons()
    for _, b in ipairs(buttons) do
        b:Destroy()
    end
    buttons = {}
end

local function loadPage()
    clearButtons()
    local startIdx = (page - 1) * perPage + 1
    local endIdx = math.min(page * perPage, #scripts)
    local btnY = 50

    for i = startIdx, endIdx do
        local name, url = unpack(scripts[i])
        local idx = i - startIdx
        local col = math.floor(idx / 6)
        local row = idx % 6
        
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(0, 180, 0, 28)
        btn.Position = UDim2.new(0, 10 + col * 190, 0, btnY + row * 32)
        btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        btn.BorderColor3 = Color3.new(1, 100, 1)
        btn.BorderSizePixel = 1
        btn.Text = name
        btn.TextColor3 = Color3.new(1, 999, 1)
        btn.TextScaled = true
        btn.Font = Enum.Font.Legacy
        btn.Parent = Ui
        
        btn.MouseButton1Click:Connect(function()
            if url == "particle" then
                for _, p in ipairs(game.Players:GetPlayers()) do
                    local char = p.Character or p.CharacterAdded:Wait()
                    local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
                    if torso then
                        local pe = Instance.new("ParticleEmitter")
                        pe.Texture = "http://www.roblox.com/asset/?id=127476787"
                        pe.VelocitySpread = 60
                        pe.Parent = torso
                    end
                end
            else
                loadstring(game:HttpGet(url, true))()
            end
        end)
        
        table.insert(buttons, btn)
    end

    local yPosNav = btnY + 6 * 32 + 10

    if not backBtn then
        backBtn = Instance.new("TextButton")
        backBtn.Size = UDim2.new(0, 80, 0, 28)
        backBtn.Text = "Back"
        backBtn.TextColor3 = Color3.new(0, 0, 0)
        backBtn.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
        backBtn.BorderColor3 = Color3.new(1, 999, 1)
        backBtn.BorderSizePixel = 1
        backBtn.Font = Enum.Font.Legacy
        backBtn.TextScaled = true
        backBtn.Parent = Ui
        
        backBtn.MouseButton1Click:Connect(function()
            if page > 1 then
                page = page - 1
                loadPage()
            end
        end)
    end
    
    backBtn.Position = UDim2.new(0, 10, 0, yPosNav)
    backBtn.Visible = page > 1

    if not nextBtn then
        nextBtn = Instance.new("TextButton")
        nextBtn.Size = UDim2.new(0, 80, 0, 28)
        nextBtn.Text = "Next"
        nextBtn.TextColor3 = Color3.new(0, 0, 0)
        nextBtn.BackgroundColor3 = Color3.fromRGB(245, 245.245)
        nextBtn.BorderColor3 = Color3.new(1, 999, 1)
        nextBtn.BorderSizePixel = 1
        nextBtn.Font = Enum.Font.Legacy
        nextBtn.TextScaled = true
        nextBtn.Parent = Ui
        
        nextBtn.MouseButton1Click:Connect(function()
            if page < totalPages then
                page = page + 1
                loadPage()
            end
        end)
    end
    
    nextBtn.Position = UDim2.new(1, -90, 0, yPosNav)
    nextBtn.Visible = page < totalPages
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
trajectory.Image = "http://www.roblox.com/asset/?id=109931774618895"
trajectory.SliceScale = 3.000

R.Name = "R"
R.Parent = StigmanFroud
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1.000
R.Position = UDim2.new(0.45430705, 0, 0.430432826, 0)
R.Size = UDim2.new(0, 110, 0, 110)
R.ZIndex = 3
R.Image = "http://www.roblox.com/asset/?id=84478430508846"
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
Earth.Image = "rbxassetid://84478430508846"

Green.Name = "Green"
Green.Parent = StigmanFroud
Green.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Green.BackgroundTransparency = 1.000
Green.BorderColor3 = Color3.fromRGB(0, 0, 0)
Green.BorderSizePixel = 0
Green.Position = UDim2.new(0.00499999989, 0, 0.824999988, 0)
Green.Size = UDim2.new(0, 110, 0, 110)
Green.ZIndex = 6
Green.Image = "rbxassetid://84478430508846"
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
