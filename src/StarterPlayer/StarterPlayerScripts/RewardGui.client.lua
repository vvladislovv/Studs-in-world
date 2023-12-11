local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game.Players.LocalPlayer
local DayCoinModel = workspace.DayCoinModel
local RewardEvent = ReplicatedStorage.Remote:WaitForChild("RewardEvent")
local PlayerGui = Player:WaitForChild("PlayerGui")
local DailyReward = PlayerGui:WaitForChild("DailyReward")

function formatTime(seconds)
	return string.format("%02ih, %02im, %02is", seconds/60^2, seconds/60%60, seconds%60)
end

function dispalyTime()
	local timeRemaing = Player.DailyReward.Value
	if timeRemaing < os.time() then return end


	while timeRemaing > os.time() do
		DayCoinModel.Display.Main.Frame.TimeRemaing.Text = formatTime(timeRemaing - os.time())
		task.wait(1)
	end
	DayCoinModel.Display.Main.Frame.TimeRemaing.Text = "Claim!"
end

Player.DailyReward.Changed:Connect(function()
	dispalyTime()
end)
dispalyTime()
