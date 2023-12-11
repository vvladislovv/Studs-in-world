local sound = game.SoundService.SoundKill
local damageAmount = 3
script.Parent.Touched:Connect(function(touched)
	local humanoid = touched.Parent:WaitForChild("Humanoid")
	if humanoid then
		if not sound.IsPlaying then
			sound:Play()
		end
	end
end)

local function onPartTouched(part)
	local character = part.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		humanoid.Health = humanoid.Health - damageAmount
	end
end

script.Parent.Touched:Connect(onPartTouched)