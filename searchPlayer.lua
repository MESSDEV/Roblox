local PathfindingService = game:GetService("PathfindingService")
local Debris = game:GetService("Debris")
local Demon = script.Parent.DemonType
while true do
	local destination = game.Workspace.Data.Player.Value
	local distance = (Demon.RootPart.Position - destination.Character.HumanoidRootPart.Position).magnitude
	if distance < 50 then
		Demon.WalkSpeed = script.Parent.Parent.WalkSpeed.Value
  local path = PathfindingService:CreatePath({
    AgentRadius = 2; 
    AgentHeight = 5; 
    AgentCanJump = false; 		})
  path:ComputeAsync(Demon.RootPart.Position, destination.Character.HumanoidRootPart.Position)
  waypoints = {}
  if path.Status == Enum.PathStatus.Success then
    waypoints = path:GetWaypoints()
    currentWaypointIndex = 1
    for _, waypoint in pairs(waypoints) do
      Demon:MoveTo(waypoints[currentWaypointIndex].Position)
      Demon.MoveToFinished:Wait()
      currentWaypointIndex += 1
      if waypoints[currentWaypointIndex] == nil then
        break
      end
    end
  else		
        Demon:MoveTo(game.Workspace.Spawners.Spawner.SpawnPoint.Position+Vector3.new(math.random(10), 0, math.random(10)))
  			Demon.MoveToFinished:Wait()
  		end
  	else
		Demon:MoveTo(game.Workspace.Spawners.Spawner.SpawnPoint.Position)
	end
	wait(0.1)
end
