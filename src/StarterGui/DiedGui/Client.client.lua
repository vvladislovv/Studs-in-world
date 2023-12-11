--Service

local TweenService = game:GetService("TweenService")

--Locals

local Player = game.Players.LocalPlayer
local Char = Player.Character

local Gui = script.Parent
local Shadow = Gui.Shadow
local Frame = Gui.Frame
local Title = Frame.Title

--Script
local Strings = {"You Died","Died","???"}
local String

Char:WaitForChild("Humanoid").Died:Connect(function()
	Frame.Visible = true
	
	local Tween1 = TweenService:Create(Frame,TweenInfo.new(0.5),{BackgroundTransparency = 0.5})
	Tween1:Play()
	wait(0.5)
	String = Strings[math.random(1,#Strings)]
	for i = 1,#String do
		Title.Text = string.sub(String,1,i)
		wait(0.1)
	end
	wait(1)
	local Tween2 = TweenService:Create(Shadow,TweenInfo.new(0.6),{BackgroundTransparency = 0})
	Tween2:Play()
	wait(0.7)
	local Tween3 = TweenService:Create(Shadow,TweenInfo.new(0.6),{BackgroundTransparency = 1})
	Tween3:Play()
	
	Frame.Visible = false
end)