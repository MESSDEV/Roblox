local USER_INPUT_SERVICE = game:GetService("UserInputService")
local RUN_SERVICE = game:GetService("RunService")

local Character = script.Parent
local RootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")

local LastJump = tick()

Humanoid.Touched:Connect(function(hit,touchpart)
	local ray = Ray.new(RootPart.Position, RootPart.CFrame.LookVector * 2.5)
	local part, point, normal = workspace:FindPartOnRay(ray, Character)

	if part and part:FindFirstChild("_Wall") and tick() - LastJump > 0.1 and touchpart.Name == "HumanoidRootPart" then
		RootPart.Anchored = true
		RootPart.CFrame = CFrame.new(RootPart.Position, RootPart.Position + normal)

		local jumped = false
		local begin = tick()

		spawn(function()
			USER_INPUT_SERVICE.JumpRequest:Wait()
			jumped = true
		end)

		repeat
			RUN_SERVICE.Heartbeat:Wait() 
		until jumped or tick() - begin > .8

		LastJump = tick()
		RootPart.Anchored = false

		if jumped then
			RootPart.Velocity = Vector3.new(40 * normal.X, 50 * normal.Y + 120, 40 * normal.Z)
		else
			RootPart.Velocity = Vector3.new()
		end
	end
end)
