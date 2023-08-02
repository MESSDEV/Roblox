function onTouch(who)		
game.Workspace.Part.ParticleEmitter.Enabled = true
end
game.Workspace.Part3.Touched:Connect(onTouch)
