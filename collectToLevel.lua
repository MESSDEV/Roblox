game.Workspace.Teleports.Part1.Transparency = 1
game.Workspace.Teleports.Part1.Position = game.Workspace.Teleports.Part1.Position + Vector3.new(0,100,0)
local z = 0
function onTouchUnion(who)
	game.Workspace.Union:Destroy()
	z = z+1
	if z == 3 then
    game.Workspace.Teleports.Part1.Position = game.Workspace.Teleports.Part1.Position - Vector3.new(0,100,0)
		game.Workspace.Teleports.Part1.Transparency = 0
	end
end
game.Workspace.Union.Touched:Connect(onTouchUnion)

function onTouchPart1(who)
	game.Workspace.Union1:Destroy()
	z=z+1
	if z==3 then
    game.Workspace.Teleports.Part1.Position=game.Workspace.Teleports.Part1.Position-Vector3.new(0,100,0)
		game.Workspace.Teleports.Part1.Transparency=0
	end
end
game.Workspace.Union1.Touched:Connect(onTouchPart1)

function onTouchPart2(who)
	game.Workspace.Union2:Destroy()
	z=z+1
	if z==3 then
    game.Workspace.Teleports.Part1.Position=game.Workspace.Teleports.Part1.Position-Vector3.new(0,100,0)
		game.Workspace.Teleports.Part1.Transparency=0
	end
end
game.Workspace.Union2.Touched:Connect(onTouchPart2)
