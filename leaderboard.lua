local Players = game:GetService("Players")
local function leaderboardSetup(player)
	game.Workspace.Data.Player.Value = player
	local char = game.Workspace:WaitForChild(player.Name)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	local gold = Instance.new("IntValue")
	gold.Name = "Coins"
	gold.Value = 0
	gold.Parent = leaderstats
	local exp = Instance.new("IntValue")
	exp.Name = "Exp"
	exp.Value = 0
	exp.Parent = leaderstats
end
Players.PlayerAdded:Connect(leaderboardSetup)
