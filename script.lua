local walkspeed = 24
local target = ""
local spawn = false

local AutoFireM9 = false
local BulletsM9 = 1
local RangeM9 = 600
local FireRateM9 = 0.8
local SpreadM9 = 11
local MaxAmmoM9 = 15
local DamageM9 = 10
local ReloadTimeM9 = 2

local AutoFireRemington870 = false
local BulletsRemington870 = 5
local RangeRemington870 = 400
local FireRateRemington870 = 0.8
local SpreadRemington870 = 3
local MaxAmmoRemington870 = 6
local DamageRemington870 = 15
local ReloadTimeRemington870 = 4

local AutoFireAK47 = false
local BulletsAK47 = 1
local RangeAK47 = 800
local FireRateAK47 = 0.1
local SpreadAK47 = 14
local MaxAmmoAK47 = 30
local DamageAK47 = 11
local ReloadTimeAK47 = 2

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Prison Life v2 (By arbuzik.new)", "Ocean")

local Main = Window:NewTab("Main")
local Combat = Window:NewTab("Combat")
local M9 = Window:NewTab("M9")
local Remington870 = Window:NewTab("Remington 870")
local AK47 = Window:NewTab("AK-47")
local Movement = Window:NewTab("Movement")
local Teleport = Window:NewTab("Teleport")
local Scripts = Window:NewTab("Scripts")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local MainSection = Main:NewSection("Main")
local CombatSection = Combat:NewSection("Combat")
local M9_Section = M9:NewSection("M9")
local Remington870_Section = Remington870:NewSection("Remington 870")
local AK47_Section = AK47:NewSection("AK-47")
local MovementSection = Movement:NewSection("Movement")
local TeleportSection = Teleport:NewSection("Teleport")
local ScriptsSection = Scripts:NewSection("Scripts")
local GuiSection = Gui:NewSection("Gui")
local CreatorSection = Creator:NewSection("Bemplia/alekseY312/arbuzik.new")

MainSection:NewButton("Rejoin", "", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MainSection:NewButton("Quick respawn", "", function()
spawn = true
while spawn do
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    local TpPart = Instance.new("Part", workspace)
    TpPart.CanCollide = false;
    TpPart.Anchored = true;
    TpPart.Transparency = 1;
    TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
    TpPart.Name = "Kill"
    local args = {
        [1] = "Bright blue"
    }
    workspace.Remote.TeamEvent:FireServer(unpack(args))
    local args = {
        [1] = "Bright orange"
    }
    workspace.Remote.TeamEvent:FireServer(unpack(args))
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Kill.CFrame
    workspace.Kill:Destroy()
end
if spawn == false then
break
end
wait()
end
end)

MainSection:NewButton("Spawn KeyCards and M9", "", function()
spawn = false
local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Spawn"
for i = 0, 9 do
local args = {
    [1] = "Bright blue"
}
workspace.Remote.TeamEvent:FireServer(unpack(args))
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spawn.CFrame
wait(0.3)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
local args = {
    [1] = "Bright orange"
}
workspace.Remote.TeamEvent:FireServer(unpack(args))
end
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spawn.CFrame
workspace.Spawn:Destroy()
end)

MainSection:NewButton("Kill me", "", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

MainSection:NewButton("Camera hack", "", function()
game.Players.LocalPlayer.CameraMaxZoomDistance = 99999
end)

MainSection:NewButton("No Fog", "", function()
game:GetService("Lighting").FogEnd = 99999
end)

MainSection:NewButton("Swap team to Guards", "", function()
local args = {
    [1] = "Bright blue"
}
workspace.Remote.TeamEvent:FireServer(unpack(args))
end)

MainSection:NewButton("Swap team to Prisons", "", function()
local args = {
    [1] = "Bright orange"
}
workspace.Remote.TeamEvent:FireServer(unpack(args))
end)

MainSection:NewButton("Swap team to Neutral", "", function()
local args = {
    [1] = "Medium stone grey"
}
workspace.Remote.TeamEvent:FireServer(unpack(args))
end)

CombatSection:NewButton("Give me M9", "", function()
local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(823.720032, 100.999992, 2251.27563, 0.999391854, -7.39001322e-08, 0.0348692648, 7.57053229e-08, 1, -5.04499056e-08, -0.0348692648, 5.3059015e-08, 0.999391854)
wait(0.5)
local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("M9").ITEMPICKUP
}
workspace.Remote.ItemHandler:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
end)

CombatSection:NewButton("Give me Remington870", "", function()
local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(823.720032, 100.999992, 2251.27563, 0.999391854, -7.39001322e-08, 0.0348692648, 7.57053229e-08, 1, -5.04499056e-08, -0.0348692648, 5.3059015e-08, 0.999391854)
wait(0.5)
local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP
}
workspace.Remote.ItemHandler:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
end)

CombatSection:NewButton("Give me AK-47", "", function()
local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.538391, 94.1287613, 2055.99658, -0.999999642, 2.34073134e-08, -0.000844621565, 2.3361963e-08, 1, 5.3703392e-08, 0.000844621565, 5.36836424e-08, -0.999999642)
wait(0.5)
local args = {
    [1] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP
}
workspace.Remote.ItemHandler:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
end)

CombatSection:NewButton("Give me Hammer", "", function()
local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(773.242554, 98.1899185, 2526.82153, 0.99983567, -1.59206355e-08, -0.0181274265, 1.4928121e-08, 1, -5.48873587e-08, 0.0181274265, 5.46077317e-08, 0.99983567)
wait(0.5)
local args = {
    [1] = workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP
}
workspace.Remote.ItemHandler:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
end)

CombatSection:NewButton("Give me Crude Knife", "", function()
local TpPart = Instance.new("Part", workspace)
TpPart.CanCollide = false;
TpPart.Anchored = true;
TpPart.Transparency = 1;
TpPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
TpPart.Name = "Tp"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(704.197205, 97.9999237, 2502.78296, 0.0508423075, 4.51428122e-08, -0.998706698, -7.11167019e-08, 1, 4.15808508e-08, 0.998706698, 6.89106585e-08, 0.0508423075)
wait(0.5)
local args = {
    [1] = workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP
}
workspace.Remote.ItemHandler:InvokeServer(unpack(args))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Tp.CFrame
workspace.Tp:Destroy()
end)

CombatSection:NewTextBox("Target", "", function(tar)
target = tar
end)
    
CombatSection:NewKeybind("Kill target", "", Enum.KeyCode.Z, function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame
wait(0.2)
for i = 0, 14 do
local args = {
    [1] = game.Players[target]
}    
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
end
end)

CombatSection:NewToggle("Kill aura", "", function(killaura)
while killaura do
if killaura == false then break end
for i, v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
for i = 0, 14 do
local args = {
    [1] = v
}    
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
end
end
end
wait(0.5)
end
end)

M9_Section:NewTextBox("AutoFire", "true/false", function(fire)
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
AutoFireM9 = fire
M9_modifire["AutoFire"] = fire
end)

M9_Section:NewTextBox("Bullets", "", function(bullets)
BulletsM9 = bullets
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["Bullets"] = bullets
end)

M9_Section:NewTextBox("Range", "", function(range)
RangeM9 = range
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["Range"] = range
end)

M9_Section:NewTextBox("FireRate", "", function(firerate)
FireRateM9 = firerate
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["FireRate"] = firerate
end)

M9_Section:NewTextBox("Spread", "", function(spread)
SpreadM9 = spread
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["Spread"] = spread
end)

M9_Section:NewTextBox("MaxAmmo FIXED", "", function(maxammo)
MaxAmmoM9 = maxammo
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["MaxAmmo"] = maxammo
end)

M9_Section:NewTextBox("Damage FIXED", "", function(damage)
DamageM9 = damage
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["Damage"] = damage
end)

M9_Section:NewTextBox("ReloadTime FIXED", "", function(reloadtime)
ReloadTimeM9 = reloadtime
local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
M9_modifire["ReloadTime"] = reloadtime
end)

M9_Section:NewToggle("Use this config for M9", "", function(state)
if state then
    while wait(1) do
        pcall (function()
            local M9_modifire = require(game.Players.LocalPlayer.Backpack["M9"].GunStates)
            M9_modifire["AutoFire"] = AutoFireM9
            M9_modifire["Bullets"] = BulletsM9
            M9_modifire["Range"] = RangeM9
            M9_modifire["FireRate"] = FireRateM9
            M9_modifire["Spread"] = SpreadM9
            M9_modifire["MaxAmmo"] = MaxAmmoM9
            M9_modifire["Damage"] = DamageM9
            M9_modifire["ReloadTime"] = ReloadTimeM9
        end)
        if state == false then
            break
        end
    end
else
    print("Disable Config M9")
end
end)

Remington870_Section:NewTextBox("AutoFire", "true/false", function(fire)
AutoFireRemington870 = fire
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["AutoFire"] = fire
end)
    
Remington870_Section:NewTextBox("Bullets", "", function(bullets)
BulletsRemington870 = bullets
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["Bullets"] = bullets
end)
    
Remington870_Section:NewTextBox("Range", "", function(range)
RangeRemington870 = range
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["Range"] = range
end)
    
Remington870_Section:NewTextBox("FireRate", "", function(firerate)
FireRateRemington870 = firerate
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["FireRate"] = firerate
end)
    
Remington870_Section:NewTextBox("Spread", "", function(spread)
SpreadRemington870 = spread
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["Spread"] = spread
end)
    
Remington870_Section:NewTextBox("MaxAmmo FIXED", "", function(maxammo)
MaxAmmoRemington870 = maxammo
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["MaxAmmo"] = maxammo
end)
    
Remington870_Section:NewTextBox("Damage FIXED", "", function(damage)
DamageRemington870 = damage
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["Damage"] = damage
end)
    
Remington870_Section:NewTextBox("ReloadTime FIXED", "", function(reloadtime)
ReloadTimeRemington870 = reloadtime
local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
Remington870_modifire["ReloadTime"] = reloadtime
end)

Remington870_Section:NewToggle("Use this config for Remington 870", "", function(state)
    if state then
        while wait(1) do
            pcall (function()
                local Remington870_modifire = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
                Remington870_modifire["AutoFire"] = AutoFireRemington870
                Remington870_modifire["Bullets"] = BulletsRemington870
                Remington870_modifire["Range"] = RangeRemington870
                Remington870_modifire["FireRate"] = FireRateRemington870
                Remington870_modifire["Spread"] = SpreadRemington870
                Remington870_modifire["MaxAmmo"] = MaxAmmoRemington870
                Remington870_modifire["Damage"] = DamageRemington870
                Remington870_modifire["ReloadTime"] = ReloadTimeRemington870
            end)
            if state == false then
                break
            end
        end
    else
        print("Disable Config Remington 870")
    end
end)

AK47_Section:NewTextBox("AutoFire", "true/false", function(fire)
AutoFireAK47 = fire
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["AutoFire"] = fire
end)
    
AK47_Section:NewTextBox("Bullets", "", function(bullets)
BulletsAK47 = bullets
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["Bullets"] = bullets
end)
    
AK47_Section:NewTextBox("Range", "", function(range)
RangeAK47 = range
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["Range"] = range
end)
    
AK47_Section:NewTextBox("FireRate", "", function(firerate)
FireRateAK47 = firerate
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["FireRate"] = firerate
end)
    
AK47_Section:NewTextBox("Spread", "", function(spread)
SpreadAK47 = spread
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["Spread"] = spread
end)
    
AK47_Section:NewTextBox("MaxAmmo FIXED", "", function(maxammo)
MaxAmmoAK47 = maxammo
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["MaxAmmo"] = maxammo
end)
    
AK47_Section:NewTextBox("Damage FIXED", "", function(damage)
DamageAK47 = damage
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["Damage"] = damage
end)
    
AK47_Section:NewTextBox("ReloadTime FIXED", "", function(reloadtime)
ReloadTimeAK47 = reloadtime
local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
AK47_modifire["ReloadTime"] = reloadtime
end)

AK47_Section:NewToggle("Use this config for AK-47", "", function(state)
    if state then
        while wait(1) do
            pcall (function()
                local AK47_modifire = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
                AK47_modifire["AutoFire"] = AutoFireAK47
                AK47_modifire["Bullets"] = BulletsAK47
                AK47_modifire["Range"] = RangeAK47
                AK47_modifire["FireRate"] = FireRateAK47
                AK47_modifire["Spread"] = SpreadAK47
                AK47_modifire["MaxAmmo"] = MaxAmmoAK47
                AK47_modifire["Damage"] = DamageAK47
                AK47_modifire["ReloadTime"] = ReloadTimeAK47
            end)
            if state == false then
                break
            end
        end
    else
        print("Disable Config AK-47")
    end
end)

MovementSection:NewTextBox("WalkSpeed", "Change your walkspeed", function(walk)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walk
walkspeed = walk
end)

MovementSection:NewTextBox("JumpPower", "Change your jumppower", function(jump)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
end)

MovementSection:NewButton("Noclip", "", function()
while wait() do
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end
end)

MovementSection:NewButton("Anti tazer", "", function()
while wait(0.2) do
if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0 then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
end
end
end)

TeleportSection:NewButton("Tp to the yard", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(820.496948, 98.1899185, 2397.23999, 0.999988556, -3.46575426e-08, 0.00478874659, 3.50972371e-08, 1, -9.17346128e-08, -0.00478874659, 9.1901633e-08, 0.999988556)
end)

TeleportSection:NewButton("Tp to the cafeteria", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.367554, 99.9899445, 2337.97217, 0.999950886, -6.8741322e-08, -0.00991140679, 6.86309178e-08, 1, -1.14788072e-08, 0.00991140679, 1.0798014e-08, 0.999950886)
end)

TeleportSection:NewButton("Tp to the prison zone", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916.720642, 99.9899826, 2420.01733, 0.999948621, 1.19822796e-09, -0.0101379566, -1.22455268e-09, 1, -2.59043809e-09, 0.0101379566, 2.60271937e-09, 0.999948621)
end)

TeleportSection:NewButton("Tp to the guards zone", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.531982, 99.9899979, 2277.83008, -0.999991596, 1.49298671e-08, 0.00410652766, 1.52079078e-08, 1, 6.76759768e-08, -0.00410652766, 6.7737858e-08, -0.999991596)
end)

TeleportSection:NewButton("Tp to the roof", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(950.324219, 137.399933, 2240.22192, 0.018119758, 1.62417741e-08, -0.999835849, 3.32348478e-08, 1, 1.6846748e-08, 0.999835849, -3.35346506e-08, 0.018119758)
end)

TeleportSection:NewButton("Tp to the criminal zone", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.538391, 94.1287613, 2055.99658, -0.999999642, 2.34073134e-08, -0.000844621565, 2.3361963e-08, 1, 5.3703392e-08, 0.000844621565, 5.36836424e-08, -0.999999642)
end)

ScriptsSection:NewButton("Dex v2 mobile", "", function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Prison-Life-DEX-EXPLORER-10558"))()
end)

ScriptsSection:NewButton("Simpe spy mobile", "", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
end)

ScriptsSection:NewButton("infinite yield", "", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

GuiSection:NewKeybind("Toggle Gui", "", Enum.KeyCode.L, function()
Library:ToggleUI()
end)
