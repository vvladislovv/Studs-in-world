-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local DayCoinModel = workspace:WaitForChild("DayCoinModel")
local RewardEvent = ReplicatedStorage.Remote:WaitForChild("RewardEvent")

--Settings
local Reward = {"Coin", 100}
local RespawnTime = 86400

function ClaimReward(plr)
    if os.time() >= plr.DailyReward.Value then
        plr.leaderstats[Reward[1]].Value += Reward[2]
        plr.DailyReward.Value = os.time() + RespawnTime

        RewardEvent:FireClient(plr, Reward[1], Reward[2])
    else
        RewardEvent:FireClient(plr)
    end
end

local Debounce = false
DayCoinModel.Platform.Touched:Connect(function(obj)
    local plr = game.Players:GetPlayerFromCharacter(obj.Parent)
    if not plr then
        return
    end
    if Debounce then
        return
    end
    Debounce = not Debounce
    
    ClaimReward(plr)

    task.wait(0.1) Debounce = not Debounce
end)
