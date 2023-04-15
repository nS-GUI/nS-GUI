local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "nS・GUI  |  Tapping-Legends-X", HidePremium = false, IntroText = "nS-GUI | Carregando...", SaveConfig = true, ConfigFolder = "nS-FILE-KEY"})

loadstring (game:HttpGet("https://raw.githubusercontent.com/Grayy12/KeySys/main/Protected%20(4).lua",true))()"

OrionLib:MakeNotification({
	Name = "Discord:",
	Content = "discord.gg/invite",
	Image = "rbxassetid://13132648697",
	Time = 25
})

getgenv().KeyInput = "string"

function CheckKey()
    if sf_key == KeyInput then
      OrionLib:Destroy()
      wait(2)
local startTime = os.clock()
while os.clock() - startTime < 5 do
    loadingLabel.Text = "nS・GUI | Loading."
    wait(0.2)
    loadingLabel.Text = "nS・GUI | Loading.."
    wait(0.2)
    loadingLabel.Text = "nS・GUI | Loading..."
    wait(0.2)
    end
    wait(1)
    
    end
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
		KeyInput = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]



Tab:AddButton({
	Name = "Login",
	Callback = function()
      		CheckKey()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]