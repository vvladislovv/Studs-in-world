local badgeID = 2150289236
local badgeService = game:GetService("BadgeService")

game.Players.PlayerAdded:Connect(function(player)
	wait(5)
	if not badgeService:UserHasBadge(player.UserId, badgeID) then
		badgeService:AwardBadge(player.UserId, badgeID)
	end
end)


print("hello")





print("hhhh")


print("sdfas")