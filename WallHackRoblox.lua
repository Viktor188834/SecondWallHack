local Ser = {
	Plrs = game:GetService("Players"),
	UIS = game:GetService("UserInputService"),
	TextCS = game:GetService("TextChatService"),
	SG = game:GetService("StarterGui"),
	Debris = game:GetService("Debris")
}

local plr = Ser.Plrs.LocalPlayer
local mouse = plr:GetMouse()
local on = false

local guiuui = Instance.new("ScreenGui", plr.PlayerGui)
guiuui.ResetOnSpawn = false
guiuui.Name = "MaybeChat"
local v01 = Instance.new("Frame", guiuui)
v01.Name = "Frame"
v01.Size = UDim2.new(0.2, 0, 0.8, 0)
v01.BackgroundTransparency = 1
v01.Position = UDim2.new(0.3, 0, 0.1, 0)
v01.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
local v02 = Instance.new("UIListLayout", v01)
v02.Name = "UIGridLayout"
v02.Padding = UDim.new(0, 0)
v02.VerticalAlignment = Enum.VerticalAlignment.Bottom
v02.VerticalFlex = "Fill"

local massage = nil

local function CreateTextButton01(Text, Color)
	local v03 = Instance.new("TextButton")
	v03.Parent = v01
	v03.Name = Text
	v03.TextColor3 = Color
	v03.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	v03.TextStrokeTransparency = 0
	v03.Text = Text
	v03.TextScaled = true
	v03.BackgroundTransparency = 1
	v03.TextWrapped = true
	v03.RichText = true
	v03.Size = UDim2.new(1, 0, 0.04, 0)
	v03.MouseButton1Click:Connect(function()
		massage = Color
		Ser.Debris:AddItem(v03, 0.1)
		guiuui:Destroy()
	end)
end

-- Color Making
wait(2)
local function notif(massage, Color)
	if Color then
		local r, g, b = math.floor(Color.R * 255), math.floor(Color.G * 255), math.floor(Color.B * 255)
		Ser.TextCS.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='rgb("..r..","..g..","..b..")'>"..massage.."</font>")
		CreateTextButton01(massage, Color)
	else
		Ser.TextCS.TextChannels.RBXGeneral:DisplaySystemMessage(massage)
	end
end

Ser.SG:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)

notif("		Select The Color Of Wall Hack / выберите цвет Волл Хака")
notif("Black", Color3.fromRGB(0, 0, 0))
notif("White", Color3.fromRGB(255, 255, 255))
notif("Blue", Color3.fromRGB(0, 0, 255))
notif("Red", Color3.fromRGB(255, 0, 0))
notif("Gray", Color3.fromRGB(134, 134, 134))
notif("Yellow", Color3.fromRGB(255, 238, 0))
notif("Black and Red", Color3.fromRGB(102, 0, 0))
notif("Black and Blue", Color3.fromRGB(11, 0, 97))
notif("Green", Color3.fromRGB(0, 162, 32))
notif("Purple", Color3.fromRGB(127, 15, 255))
notif("Lime", Color3.fromRGB(60, 255, 0))
notif("Black and Green", Color3.fromRGB(4, 74, 0))
wait(2)
notif("⬇")

local Testing = false
if Testing == true then
	massage = "Red"
end
wait()
for i=30, 0, -1 do
	wait(1)
	if massage ~= nil then
		break
	else
		notif("You Have "..i.." Seconds To Type The Color")
	end
end

guiuui:Destroy()

Ser.SG:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
if massage then
	WallHackColor = massage
else
	WallHackColor = Color3.fromRGB(97, 0, 0)
end

local thumbnailType = Enum.ThumbnailType.HeadShot
local thumbnailSize = Enum.ThumbnailSize.Size352x352

local function CreateBox(ChoosedChildren)
	local Box = Instance.new("BoxHandleAdornment")
	Box.Parent = ChoosedChildren
	Box.Adornee = ChoosedChildren
	Box.Transparency = 0.8
	Box.Color3 = WallHackColor
	Box.ZIndex = 5
	Box.Visible = true
	Box.AlwaysOnTop = true
	Box.Name = ChoosedChildren.Name
	Box.Size = ChoosedChildren.Size
	return Box
end

local function SetWH(parent)
	parent:WaitForChild("Humanoid")
	local Humanoid = parent:FindFirstChildOfClass("Humanoid")
	local parentPlr = nil
	if Ser.Plrs:FindFirstChild(parent.Name) then
		parentPlr = game.Players:GetPlayerFromCharacter(parent)
	end
	local v1 = Instance.new("BillboardGui")
	local v2 = Instance.new("Frame")
	local v3 = Instance.new("UICorner")
	local v5 = Instance.new("Frame")
	local v6 = Instance.new("UICorner")
	local v11 = Instance.new("UICorner")
	local v7 = Instance.new("TextLabel")
	local v8 = Instance.new("TextLabel")
	local v9 = Instance.new("ImageLabel")
	local v10 = Instance.new("TextLabel")
	local v4 = Instance.new("Frame")
	v11.CornerRadius = UDim.new(1, 0)
	v11.Parent = v4
	v4.Parent = v1
	v4.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	v4.BackgroundTransparency = 0
	v4.Size = UDim2.new(0.07, 0, 0.95, 0)
	v4.Position = UDim2.new(0.0175, 0, 0.025, 0)
	v4.ZIndex = 0
	v1.Size = UDim2.new(10, 0, 9, 0)
	v1.Parent = parent
	v1.Name = "WallHack"
	v1.AlwaysOnTop = true
	v1.ResetOnSpawn = false
	v1.Adornee = parent:FindFirstChild("HumanoidRootPart")
	v2.Parent = v4
	v2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	v2.BackgroundTransparency = 0
	v2.Size = UDim2.new(0.9, 0, 0.98, 0)
	v2.Position = UDim2.new(0.05, 0, 0.01, 0)
	v3.CornerRadius = UDim.new(1, 0)
	v3.Parent = v2
	v5.Parent = v2
	v5.BackgroundColor3 = Color3.fromRGB(13, 191, 0)
	v5.BackgroundTransparency = 0
	v5.Size = UDim2.new(1, 0, Humanoid.Health/Humanoid.MaxHealth, 0)
	v6.CornerRadius = UDim.new(1, 0)
	v6.Parent = v5
	v7.Parent = v1
	v7.Text = "Name: "..parent.Name
	v7.Size = UDim2.new(0.6, 0, 0.2, 0)
	v7.Position = UDim2.new(0.2, 0, 0, 0)
	v7.BackgroundTransparency = 1
	v7.TextColor3 = Color3.fromRGB(255, 255, 255)
	v7.Font = Enum.Font.SourceSansBold
	v7.TextScaled = true
	v7.TextStrokeTransparency = 0
	v7.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
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
	v9.Parent = v1
	v9.Size = UDim2.new(0.2, 0, 0.2, 0)
	v9.Position = UDim2.new(0.7, 0, 0.4, 0)
	v9.BackgroundTransparency = 0
	v9.BorderSizePixel = 0
	v10.Parent = v1
	v10.Size = UDim2.new(0.3, 0, 0.2, 0)
	v10.Position = UDim2.new(0.7, 0, 0.6, 0)
	v10.BackgroundTransparency = 1
	v10.TextColor3 = Color3.fromRGB(255, 255, 255)
	v10.Font = Enum.Font.SourceSansBold
	v10.TextScaled = true
	v10.TextStrokeTransparency = 0
	v10.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	if game.Teams:FindFirstChildOfClass("Team") and parentPlr then
		v9.BackgroundColor = parentPlr.TeamColor
	else
		v9.BackgroundColor3 = parent:FindFirstChildOfClass("BodyColors").TorsoColor3
	end
	Humanoid.HealthChanged:Connect(function()
		v5:TweenSize(UDim2.new(1, 0, Humanoid.Health/Humanoid.MaxHealth, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, false, function()
			v8.Text = Humanoid.Health.."/"..Humanoid.MaxHealth
		end)
	end)
	Humanoid.Died:Connect(function()
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
	end)
	for i=1, #parent:GetChildren() do
		local ChoosedChildren = parent:GetChildren()[i]
		if ChoosedChildren:IsA("Part") or ChoosedChildren:IsA("MeshPart") then
			local a = CreateBox(ChoosedChildren)
			if game.Teams:FindFirstChildOfClass("Team") and parentPlr then
				a.Color3 = parentPlr.TeamColor.Color
			end
			if ChoosedChildren.Name == "Head" and Humanoid.RigType.Name == "R6" then
				a.Size = Vector3.new(1.2, 1.2, 1.2)
			end
		end
	end
	if game.Players:FindFirstChild(parent.Name) then
		local content, IsPlayer = game.Players:GetUserThumbnailAsync(parentPlr.UserId, thumbnailType, thumbnailSize)
		v9.Image = content
	end
	if parent:FindFirstChildOfClass("Tool") then
		v10.Text = parent:FindFirstChildOfClass("Tool").Name
	else
		v10.Text = "ToolName"
	end
	parent.ChildAdded:Connect(function(child)
		if child:IsA("Tool") then
			wait(.05)
			v10.Text = child.Name
		end
	end)
	parent.ChildRemoved:Connect(function(child)
		if child:IsA("Tool") then
			wait(.03)
			v10.Text = "ToolName"
		end
	end)
end

function CreateTextInfo(Text, Duration)
	local g1 = Instance.new("ScreenGui")
	g1.Parent = plr.PlayerGui
	g1.Name = ""
	g1.ResetOnSpawn = false
	local g2 = Instance.new("TextLabel")
	g2.Parent = g1
	g2.Text = Text
	g2.Size = UDim2.new(0.6, 0, 0.2, 0)
	g2.Position = UDim2.new(0.2, 0, 0, 0)
	g2.TextScaled = true
	g2.TextWrapped = true
	g2.RichText = true
	g2.BorderSizePixel = 0
	g2.TextStrokeTransparency = 0
	g2.BackgroundTransparency = 1
	g2.TextColor3 = Color3.fromRGB(234, 234, 234)
	g2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	Ser.Debris:AddItem(g1, Duration or 3)
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
			for i=1, #player.Character:GetChildren() do
				local CP = player.Character:GetChildren()[i]
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
	end
end)

Ser.UIS.InputBegan:Connect(function(i, g)
	if g then return end
	if i.KeyCode == Enum.KeyCode.LeftControl then
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
		SetWH(ChoosedPlr.Character)
	end
	if ChoosedPlr ~= plr then
		ChoosedPlr.CharacterAdded:Connect(function(char)
			SetWH(char)
		end)
	end
end

local MouseKeyCode = Enum.KeyCode.Z
local animtionr6 = Instance.new("Animation")
animtionr6.Parent = plr
animtionr6.Name = "animtionr6"
animtionr6.AnimationId = "rbxassetid://72591982454540"
local animtionr15 = Instance.new("Animation")
animtionr15.Parent = plr
animtionr15.Name = "animtionr15"
animtionr15.AnimationId = "rbxassetid://112417396905403"
local animtrack = nil
plr.CharacterAdded:Connect(function(char)
	if char:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
		animtrack = char:FindFirstChildOfClass("Humanoid"):FindFirstChildOfClass("Animator"):LoadAnimation(animtionr15)
	else
		animtrack = char:FindFirstChildOfClass("Humanoid"):FindFirstChildOfClass("Animator"):LoadAnimation(animtionr6)
	end
end)
if plr.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
	animtrack = plr.Character:FindFirstChildOfClass("Humanoid"):FindFirstChildOfClass("Animator"):LoadAnimation(animtionr15)
else
	animtrack = plr.Character:FindFirstChildOfClass("Humanoid"):FindFirstChildOfClass("Animator"):LoadAnimation(animtionr6)
end

Ser.UIS.InputBegan:Connect(function(i, g)
	if i.KeyCode == MouseKeyCode then
		plr.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(mouse.Hit.Position)
	elseif i.KeyCode == Enum.KeyCode.KeypadOne then
		CreateTextInfo("Press Any Key", 5)
		MouseKeyCode = Ser.UIS.InputBegan:Wait().KeyCode
		CreateTextInfo("Mouse Key Set To "..MouseKeyCode.Name, 2)
		Ser.UIS.InputBegan:Wait()
		return
	elseif i.KeyCode == Enum.KeyCode.KeypadZero then
		print("Mouse TP: "..MouseKeyCode.Name..", Change Bind Mouse Tp: KeypadOne, Ivisible Animation: KeypadTwo")
	elseif i.KeyCode == Enum.KeyCode.KeypadTwo then
		if animtrack.IsPlaying then
			animtrack:Stop()
		else
			animtrack:Play()
		end
	end
end)

Ser.SG:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
