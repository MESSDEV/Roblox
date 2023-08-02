local userInput = game:GetService("UserInputService")
local players = game:GetService("Players")
local sprintSpeed = 30 
local walkSpeed = 16 
local sprinting = false
local player = players.LocalPlayer
local function beginSprint(input, gameProcessed)
  
	if not gameProcessed then        
		if input.UserInputType == Enum.UserInputType.Keyboard then
			local keycode = input.KeyCode
			if keycode == Enum.KeyCode.LeftShift then 
				sprinting = not sprinting
				if sprinting then
					player.Character.Humanoid.WalkSpeed = sprintSpeed
				else
					player.Character.Humanoid.WalkSpeed = walkSpeed
				end
			end
		end
	end
end

userInput.InputBegan:Connect(beginSprint)
