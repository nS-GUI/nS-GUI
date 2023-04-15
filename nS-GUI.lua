local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "nS・GUI  |  Key System", HidePremium = false, IntroText = "nS-GUI | Carregando...", SaveConfig = true, ConfigFolder = "nS-FILE-KEY"})


OrionLib:MakeNotification({
	Name = "Discord:",
	Content = "discord.gg/invite",
	Image = "rbxassetid://13132648697",
	Time = 5
})

_G.Key = "nScripted"
_G.KeyInput = "string"

function CheckKey()
OrionLib:MakeNotification({
	Name = "Sucesso!",
	Content = "Você ejetou o script.",
	Image = "rbxassetid://13132648697",
	Time = 10
})


      OrionLib:Destroy()
      wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nS-GUI/nS-GUI/main/nS-GUI-ORION.lua"))()
    end

function incorreto()
  OrionLib:MakeNotification({
	Name = "Key Incorreta",
	Content = "Você usou a key errada.",
	Image = "rbxassetid://13132648697",
	Time = 10
})
  end

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]





MainTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]



MainTab:AddButton({
	Name = "Login",
	Callback = function()
      		if _G.KeyInput == _G.Key then
          CheckKey()
          else
              incorreto()
        end
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

OrionLib:Init()
