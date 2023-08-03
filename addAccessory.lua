local ReplicatedStorage=game:GetService("ReplicatedStorage")
local accl=ReplicatedStorage:WaitForChild("lPHat")

script.Parent.MouseClick:Connect(function( player )
	player.Character.Humanoid:AddAccessory(accl:Clone())
end)
