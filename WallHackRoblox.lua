local Ser = {
	Plrs = game:GetService("Players"),
	UIS = game:GetService("UserInputService"),
	GuiS = game:GetService("TextChatService"),
	GuiMain = game:GetService("StarterGui")
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

local function CreateTextButton01(Text, Color)
	local v03 = Instance.new("TextLabel")
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
end

-- Color Making
wait(2)
local function notif(massage, Color)
	if Color then
		local r, g, b = math.floor(Color.R * 255), math.floor(Color.G * 255), math.floor(Color.B * 255)
		Ser.GuiS.TextChannels.RBXGeneral:DisplaySystemMessage("<font color='rgb("..r..","..g..","..b..")'>"..massage.."</font>")
		CreateTextButton01(massage, Color)
	else
		Ser.GuiS.TextChannels.RBXGeneral:DisplaySystemMessage(massage)
	end
end

Ser.GuiMain:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)

notif("		Type The Color Of WallHack / Напишите в чат цвет Волл Хака")
notif("		Avaibled Colors / Возможные цвета (обезательно напишите на английском): ")
notif("Blue,", Color3.fromRGB(0, 0, 255))
wait(0.5)
notif("Red,", Color3.fromRGB(255, 0, 0))
wait(0.5)
notif("Gray,", Color3.fromRGB(134, 134, 134))
wait(0.5)
notif("Yellow,", Color3.fromRGB(255, 238, 0))
wait(0.5)
notif("Black and Red,", Color3.fromRGB(102, 0, 0))
wait(0.5)
notif("Black and Blue,", Color3.fromRGB(11, 0, 97))
wait(0.5)
notif("Green,", Color3.fromRGB(0, 162, 32))
wait(0.5)
notif("Purple,", Color3.fromRGB(127, 15, 255))
wait(0.5)
notif("Lime,", Color3.fromRGB(60, 255, 0))
wait(0.5)
notif("Black and Green", Color3.fromRGB(4, 74, 0))
wait(2)
notif("⬇")

local massage = nil

local gui = Instance.new("ScreenGui", plr.PlayerGui)
gui.ResetOnSpawn = false
gui.Name = "Type The Color"
local v0 = Instance.new("TextBox", gui)
v0.Text = "Type The Color Here"
v0.Size = UDim2.new(0.3, 0, 0.2, 0)
v0.Position = UDim2.new(0, 0, 0.7, 0)
v0.BorderSizePixel = 0
v0.TextScaled = true
v0.TextWrapped = true
v0.RichText = true
v0.Font = Enum.Font.RobotoCondensed
v0.BackgroundColor3 = Color3.fromRGB(183, 255, 157)
v0.TextColor3 = Color3.fromRGB(255, 255, 255)
v0.TextStrokeTransparency = 0
v0.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
v0.FocusLost:Connect(function()
	if v0.Text ~= "" then
		massage = v0.Text
	end
	v0.Text = "Syceffuly!"
end)
wait(5)
for i=30, 0, -1 do
	wait(1)
	if massage ~= nil then
		break
	else
		notif("You Have "..i.." Seconds To Type The Color")
	end
end

gui:Destroy()
guiuui:Destroy()

Ser.GuiMain:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
if massage then
	if massage == "Blue" then
		WallHackColor = Color3.fromRGB(0, 0, 255)
	elseif massage == "Red" then
		WallHackColor = Color3.fromRGB(255, 0, 0)
	elseif massage == "Gray" then
		WallHackColor = Color3.fromRGB(134, 134, 134)
	elseif massage == "Yellow" then
		WallHackColor = Color3.fromRGB(255, 238, 0)
	elseif massage == "Black and Red" then
		WallHackColor = Color3.fromRGB(97, 0, 0)
	elseif massage == "Black and Blue" then
		WallHackColor = Color3.fromRGB(11, 0, 97)
	elseif massage == "Green" then
		WallHackColor = Color3.fromRGB(0, 162, 32)
	elseif massage == "Purple" then
		WallHackColor = Color3.fromRGB(127, 15, 255)
	elseif massage == "Lime" then
		WallHackColor = Color3.fromRGB(60, 255, 0)
	elseif massage == "Black and Green" then
		WallHackColor = Color3.fromRGB(4, 74, 0)
	end
else
	WallHackColor = Color3.fromRGB(97, 0, 0)
end

local thumbnailType = Enum.ThumbnailType.HeadShot
local thumbnailSize = Enum.ThumbnailSize.Size352x352

local function CreateBox(ChoosedChildren, Sizee)
	local Box = Instance.new("BoxHandleAdornment")
	Box.Parent = ChoosedChildren
	Box.Adornee = ChoosedChildren
	Box.Transparency = 0.6
	Box.Color3 = WallHackColor
	Box.ZIndex = 5
	Box.Visible = true
	Box.AlwaysOnTop = true
	Box.Name = ChoosedChildren.Name
	if Sizee then
		Box.Size = ChoosedChildren.Size + Sizee
	else
		Box.Size = ChoosedChildren.Size
	end
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
	v7.Text = "Name: "..parent.Name
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
	local v9 = Instance.new("ImageLabel")
	v9.Parent = v1
	v9.Size = UDim2.new(0.2, 0, 0.2, 0)
	v9.Position = UDim2.new(0.7, 0, 0.4, 0)
	v9.BackgroundTransparency = 0
	v9.BorderSizePixel = 0
	if game.Teams:FindFirstChildOfClass("Team") and parentPlr then
		v9.BackgroundColor = parentPlr.TeamColor
	else
		v9.BackgroundColor3 = parent:FindFirstChildOfClass("BodyColors").TorsoColor3
	end
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
	wait(1)
	for i=1, #parent:GetChildren() do
		local ChoosedChildren = parent:GetChildren()[i]
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			if ChoosedChildren:IsA("MeshPart") then
				if ChoosedChildren.Name == "Head" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LeftFoot" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "RightFoot" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LeftHand" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "RightHand" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "UpperTorso" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LowerTorso" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "RightUpperArm" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "RightLowerArm" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LeftUpperArm" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LeftLowerArm" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "RightLowerLeg" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "RightUpperLeg" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LeftLowerLeg" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "LeftUpperLeg" then
					CreateBox(ChoosedChildren)
				end
			end
		elseif Humanoid.RigType == Enum.HumanoidRigType.R6 then
			if ChoosedChildren:IsA("Part") then
				if ChoosedChildren.Name == "Torso" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "Head" then
					CreateBox(ChoosedChildren, Vector3.new(-0.5, 0, 0))
				end
				if ChoosedChildren.Name == "Left Arm" or ChoosedChildren.Name == "LeftArm" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "Right Arm" or ChoosedChildren.Name == "RightArm" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "Left Leg" or ChoosedChildren.Name == "LeftLeg" then
					CreateBox(ChoosedChildren)
				end
				if ChoosedChildren.Name == "Right Leg" or ChoosedChildren.Name == "RightLeg" then
					CreateBox(ChoosedChildren)
				end
			end
		end
	end
	if game.Players:FindFirstChild(parent.Name) then
		local content, IsPlayer = game.Players:GetUserThumbnailAsync(parentPlr.UserId, thumbnailType, thumbnailSize)
		v9.Image = content
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
	SetWH(ChoosedPlr)
	if ChoosedPlr ~= plr then
		ChoosedPlr.CharacterAdded:Connect(function(char)
			SetWH(char)
		end)
	end
end
