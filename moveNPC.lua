local npc = game.Workspace.NPC1
local humanoid = npc.Humanoid

local pointA = game.Workspace.GreenFlag
humanoid:MoveTo(pointA.PrimaryPart.Position)
