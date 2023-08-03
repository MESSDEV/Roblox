game.Players.CharacterAutoLoads = false
local function onPlayerAdded(player)
    local humanoidDescription = Instance.new("HumanoidDescription")
    humanoidDescription.HatAccessory = 24487251
    humanoidDescription.HairAccessory = 63690008
    humanoidDescription.Face = 86487700
    humanoidDescription.GraphicTShirt = 1711661
    humanoidDescription.HeadColor = Color3.new(0, 1, 0)
    humanoidDescription.LeftArmColor = Color3.new(1, 0, 0)
    humanoidDescription.RightLegColor = Color3.new(1, 0, 0)
    humanoidDescription.LeftLegColor = Color3.new(0, 0, 1)
    humanoidDescription.RightArmColor = Color3.new(0, 0, 1)
    player:LoadCharacterWithHumanoidDescription(humanoidDescription)
end
game.Players.PlayerAdded:Connect(onPlayerAdded)

