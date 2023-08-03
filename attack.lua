local rarm = script.Parent:FindFirstChild("RightHand")
local larm = script.Parent:FindFirstChild("LeftHand")
local sword = script.Parent:FindFirstChild("ClassicSword")
local Attack_Speed = script.Parent.Parent.AttackSpeed
function dmg_hand(hit)
	if hit.Parent ~= nil then
		local hum = hit.Parent:findFirstChild("Humanoid")
		if hum ~= nil then
			hum.Health = hum.Health - 0.1
		end
		wait(Attack_Speed.Value)
	end
end
function dmg_sword(hit)
	if hit.Parent ~= nil then
		local hum = hit.Parent:findFirstChild("Humanoid")
		if hum ~= nil then
			hum.Health = hum.Health - 1
		end
		wait(Attack_Speed.Value)
	end
end
rarm.Touched:connect(dmg_hand)
larm.Touched:connect(dmg_hand)
larm.Touched:connect(dmg_sword)
