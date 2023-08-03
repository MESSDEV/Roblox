game.Players.CharacterAutoLoads = false
local function onPlayerAdded(player)
     local humanoidDescription = Instance.new("HumanoidDescription")
     player:LoadCharacterWithHumanoidDescription(humanoidDescription)
end
game.Players.PlayerAdded:Connect(onPlayerAdded)
