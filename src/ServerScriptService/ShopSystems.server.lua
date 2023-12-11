local PlathormShop = game.Workspace.Shoper.PlathormShop

local SS = game:GetService("ServerStorage")
local Buy = game:GetService("ReplicatedStorage").Remote.Shop

local CostItems = {
	OneBag = 0,
	TwoBag = 1500,
	ThreeBag = 8700,
	FourBag = 12500,
	FiveBag = 19000,
}

PlathormShop.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Himanoid") then
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		--game.ReplicatedStorage.Remote.TouchedShop:FireClient(player)
	end
end)

Buy.OnServerEvent:Connect(function(Player, Item)
	local CoinP  = Player.leaderstats.Coin
		if CoinP.Value < CostItems[Item] then return end
	
		CoinP.Value -= CostItems[Item]
		
		local BackpackP = SS.Bag
		BackpackP.Parent = Player.Backpack
end)
