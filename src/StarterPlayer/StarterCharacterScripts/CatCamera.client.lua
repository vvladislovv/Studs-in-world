local Player = game.Players.LocalPlayer
local ChatNpc = game:GetService("Chat")
local CCam = game.Workspace.CurrentCamera
local CameraFolder = game.Workspace.CameraFolder
local Cam1 = CameraFolder.Camera1
local NpcFolder = game.Workspace.NpcChat
local CutPlatform = game.Workspace.CutPlatform
local TweenService = game:GetService("TweenService")

CCam.CameraType = "Custom"

local TS = game:GetService("TweenService")
local TI = TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local tween = TS:Create(CCam, TI, {CFrame = Cam1.CFrame})
local CameraWork = true 

CutPlatform.Platform.Touched:Connect(function(hit)
	local VladNpc = NpcFolder.vlad060108.Head
	local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
	if Player then
		if CutPlatform.Platform.CanTouch == true then
			CutPlatform.Platform.CanTouch = false
			CCam.CameraType = "Scriptable"
			tween:Play()
			ChatNpc:Chat(VladNpc, "Wellcome in The Studs in world!")
			wait(3)
			ChatNpc:Chat(VladNpc, "In this game you need to collect components.")
			wait(3)
			ChatNpc:Chat(VladNpc, "Components are different, rare, super rare, strange, expensive. And for each they give their own reward.")
			wait(3)
			ChatNpc:Chat(VladNpc, "Good luck!")
			wait(5)
			CCam.CameraType = "Custom"
			wait(60)
			CutPlatform.Platform.CanTouch = true
		end
	end
end)


