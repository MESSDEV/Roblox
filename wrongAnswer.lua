function onTouchBam(who)		
	who.Parent.Humanoid.Health=0
end
game.Workspace.Part1.Touched:Connect(onTouchBam)
