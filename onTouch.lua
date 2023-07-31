function onTouch(who)
  game.Workspace.Torch.Fire.Enabled=true
end
game.Workspace.Area.Touched:Connect(onTouch)
