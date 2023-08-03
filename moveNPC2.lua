local npc = game.Workspace.NPC1
local humanoid = npc.Humanoid
local pointA = game.Workspace.GreenFlag
local pointB = game.Workspace.RedFlag
humanoid:MoveTo(pointA.PrimaryPart.Position)
humanoid.MoveToFinished:Wait()
humanoid:MoveTo(pointB.PrimaryPart.Position)
