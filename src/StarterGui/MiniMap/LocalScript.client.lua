local plr = game:GetService("Players").LocalPlayer
local char = plr.Character or plr.CharacterAdded
local hum = char:WaitForChild("Humanoid")
local humRootPart = char:WaitForChild("HumanoidRootPart")
local map = game.Workspace.Map
local gui = script.Parent
local ViewPortFrame = gui.MinimapFrame:WaitForChild("MinimapFrame2")
---get the Camera
local cam = Instance.new("Camera")
cam.Parent = game.Workspace
cam.CameraType = Enum.CameraType.Scriptable
cam.FieldOfView = 1
ViewPortFrame.CurrentCamera = cam

for i, minimapObjects in pairs(map:GetChildren()) do
	minimapObjects:Clone().Parent = ViewPortFrame
end

game:GetService("RunService").RenderStepped:Connect(function()
	local camFr = CFrame.new(humRootPart.Position+Vector3.new(0, 9500, 0), humRootPart.Position)
	cam.CFrame = camFr
	ViewPortFrame:WaitForChild("Arrow").Rotation = -humRootPart.Orientation.Y -90
end)