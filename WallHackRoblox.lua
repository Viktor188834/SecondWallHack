local Ser = {
	Plrs = game:GetService("Players"),
	UIS = game:GetService("UserInputService")
}
local plr = Ser.Plrs.LocalPlayer
local mouse = plr:GetMouse()
local on = false

local thumbnailType = Enum.ThumbnailType.HeadShot
local thumbnailSize = Enum.ThumbnailSize.Size352x352

local function SetWH(parent)
	parent:WaitForChild("Humanoid")
	local Humanoid = parent:FindFirstChildOfClass("Humanoid")
	local parentPlr = game.Players:GetPlayerFromCharacter(parent)
	local v1 = Instance.new("BillboardGui")
	v1.Size = UDim2.new(9, 0, 9, 0)
	v1.Parent = parent
	v1.Name = "WallHack"
	v1.AlwaysOnTop = true
	local v2 = Instance.new("Frame")
	v2.Parent = v1
	v2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	v2.BackgroundTransparency = 0
	v2.Size = UDim2.new(0.06, 0, 0.9, 0)
	v2.Position = UDim2.new(0.02, 0, 0.05, 0)
	local v3 = Instance.new("UICorner")
	v3.CornerRadius = UDim.new(1, 0)
	v3.Parent = v2
	local v4 = Instance.new("UIStroke")
	v4.Parent = v2
	v4.Thickness = 3
	v4.Color = Color3.fromRGB(95, 95, 95)
	local v5 = Instance.new("Frame")
	v5.Parent = v2
	v5.BackgroundColor3 = Color3.fromRGB(13, 191, 0)
	v5.BackgroundTransparency = 0
	v5.Size = UDim2.new(1, 0, Humanoid.Health/Humanoid.MaxHealth, 0)
	local v6 = Instance.new("UICorner")
	v6.CornerRadius = UDim.new(1, 0)
	v6.Parent = v5
	local v7 = Instance.new("TextLabel")
	v7.Parent = v1
	v7.Text = parent.Name
	v7.Size = UDim2.new(0.6, 0, 0.2, 0)
	v7.Position = UDim2.new(0.2, 0, 0, 0)
	v7.BackgroundTransparency = 1
	v7.TextColor3 = Color3.fromRGB(255, 255, 255)
	v7.Font = Enum.Font.SourceSansBold
	v7.TextScaled = true
	v7.TextStrokeTransparency = 0
	v7.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	local v8 = Instance.new("TextLabel")
	v8.Parent = v1
	v8.Text = Humanoid.Health.."/"..Humanoid.MaxHealth
	v8.Size = UDim2.new(0.6, 0, 0.2, 0)
	v8.Position = UDim2.new(0.2, 0, 0.8, 0)
	v8.BackgroundTransparency = 1
	v8.TextColor3 = Color3.fromRGB(13, 255, 0)
	v8.Font = Enum.Font.SourceSansBold
	v8.TextScaled = true
	v8.TextStrokeTransparency = 0
	v8.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	local content, IsPlayer = game.Players:GetUserThumbnailAsync(parentPlr.UserId, thumbnailType, thumbnailSize)
	local v9 = Instance.new("ImageLabel")
	v9.Parent = v1
	v9.Size = UDim2.new(0.2, 0, 0.2, 0)
	v9.Position = UDim2.new(0.7, 0, 0.7, 0)
	v9.BackgroundTransparency = 1
	Humanoid.HealthChanged:Connect(function()
		v8.Text = Humanoid.Health.."/"..Humanoid.MaxHealth
		v5:TweenSize(UDim2.new(1, 0, Humanoid.Health/Humanoid.MaxHealth, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.5, false)
		if Humanoid.Health <= 0 then
			v1:Destroy()
			for i=1, #parent:GetChildren() do
				local CP = parent:GetChildren()[i]
				if CP:IsA("MeshPart") then
					for o=1, #CP:GetChildren() do
						if CP:GetChildren()[o]:IsA("BoxHandleAdornment") then
							CP:GetChildren()[o]:Destroy()
						end
					end
				end
				if CP:IsA("Part") then
					for o=1, #CP:GetChildren() do
						if CP:GetChildren()[o]:IsA("BoxHandleAdornment") then
							CP:GetChildren()[o]:Destroy()
						end
					end
				end
			end
		end
	end)
	wait(0.5)
	local function CreateBox(ChoosedChildren, CFramee, Sizee)
		local Box = Instance.new("BoxHandleAdornment")
		Box.Parent = ChoosedChildren
		Box.Adornee = parent
		Box.Transparency = 0.7
		Box.Color3 = Color3.fromRGB(86, 23, 23)
		Box.ZIndex = 5
		Box.Visible = true
		Box.AlwaysOnTop = true
		Box.Name = ChoosedChildren.Name
		if Sizee then
			Box.Size = ChoosedChildren.Size + Sizee
		else
			Box.Size = ChoosedChildren.Size
		end
		Box.CFrame = Box.CFrame * CFramee
		return Box
	end
	local content, IsPlayer = game.Players:GetUserThumbnailAsync(parentPlr.UserId, thumbnailType, thumbnailSize)
	v9.Image = content
	for i=1, #parent:GetChildren() do
		local ChoosedChildren = parent:GetChildren()[i]
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			if ChoosedChildren:IsA("MeshPart") then
				if ChoosedChildren.Name == "Head" then
					CreateBox(ChoosedChildren, CFrame.new(0, 2, 0))
				end
				if ChoosedChildren.Name == "LeftFoot" then
					CreateBox(ChoosedChildren, CFrame.new(-0.5, -2.45, 0))
				end
				if ChoosedChildren.Name == "RightFoot" then
					CreateBox(ChoosedChildren, CFrame.new(0.5, -2.45, 0))
				end
				if ChoosedChildren.Name == "LeftHand" then
					CreateBox(ChoosedChildren, CFrame.new(-1.5, -0.4, 0))
				end
				if ChoosedChildren.Name == "RightHand" then
					CreateBox(ChoosedChildren, CFrame.new(1.5, -0.4, 0))
				end
				if ChoosedChildren.Name == "UpperTorso" then
					CreateBox(ChoosedChildren, CFrame.new(0, 0.6, 0))
				end
				if ChoosedChildren.Name == "LowerTorso" then
					CreateBox(ChoosedChildren, CFrame.new(0, -0.4, 0))
				end
				if ChoosedChildren.Name == "RightUpperArm" then
					CreateBox(ChoosedChildren, CFrame.new(1.5, 0.8, 0))
				end
				if ChoosedChildren.Name == "RightLowerArm" then
					CreateBox(ChoosedChildren, CFrame.new(1.5, 0, 0), Vector3.new(0, -0.6, 0))
				end
				if ChoosedChildren.Name == "LeftUpperArm" then
					CreateBox(ChoosedChildren, CFrame.new(-1.5, 0.8, 0))
				end
				if ChoosedChildren.Name == "LeftLowerArm" then
					CreateBox(ChoosedChildren, CFrame.new(-1.5, 0, 0), Vector3.new(0, -0.6, 0))
				end
				if ChoosedChildren.Name == "RightLowerLeg" then
					CreateBox(ChoosedChildren, CFrame.new(-0.5, -1, 0))
				end
				if ChoosedChildren.Name == "RightUpperLeg" then
					CreateBox(ChoosedChildren, CFrame.new(-0.5, -2, 0), Vector3.new(0, -0.4, 0))
				end
				if ChoosedChildren.Name == "LeftLowerLeg" then
					CreateBox(ChoosedChildren, CFrame.new(0.5, -1, 0))
				end
				if ChoosedChildren.Name == "LeftUpperLeg" then
					CreateBox(ChoosedChildren, CFrame.new(0.5, -2, 0), Vector3.new(0, -0.4, 0))
				end
			end
		elseif Humanoid.RigType == Enum.HumanoidRigType.R6 then
			if ChoosedChildren:IsA("Part") then
				if ChoosedChildren.Name == "Torso" then
					CreateBox(ChoosedChildren, CFrame.new(0, 0.5, 0))
				end
				if ChoosedChildren.Name == "Head" then
					CreateBox(ChoosedChildren, CFrame.new(0, 2, 0), Vector3.new(-1, 0, 0))
				end
				if ChoosedChildren.Name == "Left Arm" or ChoosedChildren.Name == "LeftArm" then
					CreateBox(ChoosedChildren, CFrame.new(-1.5, 0.5, 0))
				end
				if ChoosedChildren.Name == "Right Arm" or ChoosedChildren.Name == "RightArm" then
					CreateBox(ChoosedChildren, CFrame.new(1.5, 0.5, 0))
				end
				if ChoosedChildren.Name == "Left Leg" or ChoosedChildren.Name == "LeftLeg" then
					CreateBox(ChoosedChildren, CFrame.new(-0.5, -1.5, 0))
				end
				if ChoosedChildren.Name == "Right Leg" or ChoosedChildren.Name == "RightLeg" then
					CreateBox(ChoosedChildren, CFrame.new(0.5, -1.5, 0))
				end
			end
		end
	end
end

Ser.Plrs.PlayerAdded:Connect(function(player)
	if player ~= plr then
		player.CharacterAdded:Connect(function(char)
			SetWH(char)
		end)
	end
end)

Ser.Plrs.PlayerRemoving:Connect(function(player)
	if player ~= plr then
		if player.Character then
			player.Character:FindFirstChild("WallHack"):Destroy()
		end
	end
end)

Ser.UIS.InputBegan:Connect(function(i, g)
	if g then return end
	if i.KeyCode == Enum.KeyCode.RightControl then
		if not on then
			on = true
			for i, v in pairs(Ser.Plrs:GetPlayers()) do
				if v ~= plr then
					if v.Character then
						v.Character:FindFirstChild("WallHack").Enabled = true
						for i=1, #v:GetChildren() do
							local CP = v:GetChildren()[i]
							if CP:IsA("MeshPart") then
								for o=1, #CP:GetChildren() do
									if CP:GetChildren()[o]:IsA("BoxHandleAdornment") then
										CP:GetChildren()[o].Visible = true
									end
								end
							end
							if CP:IsA("Part") then
								for o=1, #CP:GetChildren() do
									if CP:GetChildren()[o]:IsA("BoxHandleAdornment") then
										CP:GetChildren()[o].Visible = true
									end
								end
							end
						end
					end
				end
			end
		else
			on = false
			for i, v in pairs(Ser.Plrs:GetPlayers()) do
				if v ~= plr then
					if v.Character then
						v.Character:FindFirstChild("WallHack").Enabled = false
						for i=1, #v:GetChildren() do
							local CP = v:GetChildren()[i]
							if CP:IsA("MeshPart") then
								for o=1, #CP:GetChildren() do
									if CP:GetChildren()[o]:IsA("BoxHandleAdornment") then
										CP:GetChildren()[o].Visible = false
									end
								end
							end
							if CP:IsA("Part") then
								for o=1, #CP:GetChildren() do
									if CP:GetChildren()[o]:IsA("BoxHandleAdornment") then
										CP:GetChildren()[o].Visible = false
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

for i=1, #Ser.Plrs:GetPlayers() do
	local ChoosedPlr = Ser.Plrs:GetPlayers()[i]
	if ChoosedPlr ~= plr then
		ChoosedPlr.CharacterAdded:Connect(function(char)
			SetWH(char)
		end)
	end
end
