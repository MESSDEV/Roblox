local StartPoint = script.Parent.Part1
local EndPoint = script.Parent.Part2


function Teleport_onTouch(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		local human = touched.Parent
		human:MoveTo(EndPoint.Position + Vector3.new(0, 10, 0))
	end
end

StartPoint.Touched:Connect(Teleport_onTouch)
