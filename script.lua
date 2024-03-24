walkspeed = 16
local noclip;

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Prison Life v2 (By arbuzik.new)", "Ocean")

local Main = Window:NewTab("Main")
local Combat = Window:NewTab("Combat")
local Movement = Window:NewTab("Movement")
local Teleport = Window:NewTab("Teleport")
local Scripts = Window:NewTab("Scripts")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local MainSection = Main:NewSection("Main")
local CombatSection = Combat:NewSection("Combat")
local MovementSection = Movement:NewSection("Movement")
local TeleportSection = Teleport:NewSection("Teleport")
local ScriptsSection = Scripts:NewSection("Scripts")
local GuiSection = Gui:NewSection("Gui")
local CreatorSection = Creator:NewSection("Bemplia/alekseY312/arbuzik.new")

MainSection:NewButton("Rejoin", "", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

MainSection:NewButton("Kill me", "", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

MainSection:NewButton("Mega camera max zoom", "", function()
game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
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

CombatSection:NewTextBox("Target", "", function(tar)
target = tar
end)
    
CombatSection:NewKeybind("Kill target", "", Enum.KeyCode.Z, function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame
wait(0.2)
for i = 0, 9 do
local args = {
    [1] = game.Players[target]
}    
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
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
pcall (function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
end)
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
