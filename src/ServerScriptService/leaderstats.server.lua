local DataStoreService = game:GetService("DataStoreService")
local Players = game:GetService("Players")
local DataStore = DataStoreService:GetDataStore("MyDataStore")

function PlayerAdded(Player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Parent = Player
	leaderstats.Name = "leaderstats"

	local Coin = Instance.new("IntValue")
	Coin.Parent = leaderstats
	Coin.Name = "Coin"
	Coin.Value = 0

	local Components = Instance.new("IntValue")
	Components.Parent = leaderstats
	Components.Name = "Components"
	Components.Value = 0

	local DailyReward = Instance.new("NumberValue")
	DailyReward.Parent = Player
	DailyReward.Name = "DailyReward"
	DailyReward.Value = 0

	local data
	local Success, warning = pcall(function()
		data = DataStore:GetAsync(Player.UserId)
	end)

	if Success and data then
		Coin.Value = data.Coin
		DailyReward.Value = data.DailyReward
		Components.Value = data.Components
	end
end

function PlayerRemoving(Player)
	local Success, warning = pcall(function()
		DataStore:SetAsync(Player.UserId, {
			Coin = Player.leaderstats.Coin.Value,
			Components = Player.leaderstats.Components.Value,
			DailyReward = Player.DailyReward.Value
		})
	end)
	if not Success then warn(warning) end
end

Players.PlayerAdded:Connect(PlayerAdded)
for _, Player in pairs(Players:GetPlayers()) do
	task.spawn(function()
		PlayerAdded(Player)
	end)
end
Players.PlayerRemoving:Connect(PlayerRemoving)

