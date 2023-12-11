local rep = game:GetService("ReplicatedStorage") --You can change this to ServerStorage for more security.
local nametag = rep.NameTag 

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)

		local head = char.Head
		local newtext = nametag:Clone() --Cloning the text.
		local uppertext = newtext.UpperText
		local lowertext = newtext.LowerText
		local humanoid = char.Humanoid

		humanoid.DisplayDistanceType = "None"

		--Main Text
		newtext.Parent = head
		newtext.Adornee = head
		uppertext.Text = player.Name

		if player.Name == "" then
			print("FFF")
			lowertext.Text = "Owner" --This is that the text will say.
			lowertext.TextColor3 = Color3.fromRGB(241, 192, 232) --This is what the color of the text will be.
		end
	end)
end)
