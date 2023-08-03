local PATROL_DELAY = 2
local npc = game.Workspace.NPC2
local humanoid = npc.Humanoid
local pointA = game.Workspace.GreenFlag
local pointB = game.Workspace.RedFlag
local nextDestinationObject = pointA
while wait(PATROL_DELAY) do
humanoid:MoveTo(nextDestinationObject.PrimaryPart.Position)
	humanoid.MoveToFinished:Wait()
	if nextDestinationObject == pointA then
		nextDestinationObject = pointB
  elseif nextDestinationObject == pointB then
		nextDestinationObject = pointC
	else
		nextDestinationObject = pointA
	end
end
