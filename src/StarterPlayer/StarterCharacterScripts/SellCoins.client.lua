local Player = game.Players.LocalPlayer
local Seller = workspace.Platform.SellPlathorm
local MoneySell = game.SoundService.MoneySound

local function sell(Touched)
	Player.leaderstats.Coin.Value = Player.leaderstats.Coin.Value + Player.leaderstats.Components.Value
	Player.leaderstats.Components.Value = Player.leaderstats.Components.Value - Player.leaderstats.Components.Value
end

Seller.Touched:Connect(sell)