local player = game.Players.LocalPlayer
local char = player.Character
player.CharacterAdded:Connect(function()
	local Backpack = player:WaitForChild("BackpackShop").BackpackV
	local mining = player.leaderstats[player:WaitForChild("BackpackShop").Mining.Value]
	script.Parent.Indicator.Text = mining.Value.."/"..Backpack.Value
	
	
	Backpack.Changed:Connect(function()
	script.Parent.Indicator.Text = mining.Value.."/"..Backpack.Value 
	end)
	
	mining.Changed:Connect(function()
	script.Parent.Indicator.Text = mining.Value.."/"..Backpack.Value
	end)
end)
