if game.PlaceId == 8750997647 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "nS・GUI  |  Tapping-Legends-X", HidePremium = false, IntroText = "nS-GUI | Carregando...", IntroEnabled = false, SaveConfig = true, ConfigFolder = "nS-FILE-CONFIG"})

OrionLib:MakeNotification({
	Name = "Discord:",
	Content = "discord.gg/invite",
	Image = "rbxassetid://13132648697",
	Time = 10
})



















end
if game.PlaceId == 8750997647 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "nS・GUI  |  Tapping-Legends-X", HidePremium = false, IntroText = "nS-GUI | Carregando...", SaveConfig = true, ConfigFolder = "nS-FILE-CONFIG"})

OrionLib:MakeNotification({
	Name = "Discord:",
	Content = "discord.gg/invite",
	Image = "rbxassetid://13132648697",
	Time = 25
})

-- Value

_G.autofarm = true


-- function

function autofarm()
  while _G.autofarm == true do
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Tap"):FireServer()
      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EquipBest"):InvokeServer()
      print("Clicked | EquipBest = Online")
      wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
      end
  	end


-- Tabs

local FarmTab = Window:MakeTab({
	Name = "Hacking",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local ConfigTab = Window:MakeTab({
	Name = "Config",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- Buttons

ConfigTab:AddButton({
	Name = "DestroirPainel (Panic)",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

FarmTab:AddToggle({
	Name = "(OP) Autotap",
	Default = false,
	Callback = function(Value)
		_G.autofarm = Value
    autofarm()
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]


end
OrionLib:Init()
