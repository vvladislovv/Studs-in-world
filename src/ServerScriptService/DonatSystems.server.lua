local MPS = game:GetService("MarketplaceService")
local IDProduct = 1612713182
local PlathormDonat1 = game.Workspace.Platform.DonatPlathorm1.ClickDetector
local PlathormDonat2 = game.Workspace.Platform.DonatPlathorm2.ClickDetector


PlathormDonat1.MouseClick:Connect(function(plr)
	MPS:PromptProductPurchase(plr, IDProduct)
end)
PlathormDonat2.MouseClick:Connect(function(plr)
	MPS:PromptProductPurchase(plr, IDProduct)
end)


