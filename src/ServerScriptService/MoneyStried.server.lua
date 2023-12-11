local MoneySound = game.SoundService.MoneySound
local CoinFolder = game.Workspace.MoneyStraid

for _, Coin in next, CoinFolder:GetChildren() do
	local cooldown = true

Coin.t
		if hit.Parent:FindFirstChild("Humanoid") ~= nil then
			if cooldown == true then
				cooldown = false
				Coin.Transparency = 1
				local Player = game.Players:GetPlayerFromCharacter(hit.Parent)
				Player.leaderstats.Coin.Value = Player.leaderstats.Coin.Value + 10
				Coin.Transparency = 1
				MoneySound:Play()
				wait(20)
				cooldown = true
				Coin.Transparency = 0
			end
		end
	end)
end
while true do
	wait()
	for _, mm in pairs(CoinFolder:GetChildren()) do
		mm.CFrame = mm.CFrame * CFrame.fromEulerAnglesXYZ(0.1,0,0)
	end
end





