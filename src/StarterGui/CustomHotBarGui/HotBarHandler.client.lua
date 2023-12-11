game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local char = workspace:WaitForChild(player.Name) 
local bp = player.Backpack
local hum = char:WaitForChild("Humanoid")
local frame = script.Parent.Slot
local template = frame.Template
local equipped = 0
local unequipped = 0.7
local iconSize = template.Size
local iconBorder = {x = 15, y = 5} 
frame.Visible = true

local inputKeys = { 
	["One"] = {txt = "1"},
	["Two"] = {txt = "2"},
	["Three"] = {txt = "3"},
	["Four"] = {txt = "4"},
	["Five"] = {txt = "5"},
	["Six"] = {txt = "6"},
	["Seven"] = {txt = "7"},
	["Eight"] = {txt = "8"},
	["Nine"] = {txt = "9"},
}

local inputOrder = { 	inputKeys["One"],inputKeys["Two"],inputKeys["Three"],inputKeys["Four"],inputKeys["Five"],inputKeys["Six"],inputKeys["Seven"],inputKeys["Eight"],inputKeys["Nine"]
}

function handleEquip(tool)
	if tool then
		if tool.Parent ~= char then
			hum:EquipTool(tool)
		else
			hum:UnequipTools()
		end
	end
end

function create() 
	local toShow = #inputOrder 
	local totalX = (toShow*iconSize.X.Offset)+((toShow+1)*iconBorder.x)
	local totalY = iconSize.Y.Offset + (2*iconBorder.y)
	frame.Size = UDim2.new(0, totalX, 0, totalY)
	frame.Position = UDim2.new(0.5, -(totalX/2), 1, -(totalY+(iconBorder.y*2)))
	frame.Visible = true 
	for i = 1, #inputOrder do
		local value = inputOrder[i]		
		local clone = template:Clone()
		clone.Parent = frame
		clone.Label.Text = value["txt"]
		clone.Name = value["txt"]
		clone.Visible = true
		clone.Position = UDim2.new(0, (i-1)*(iconSize.X.Offset)+(iconBorder.x*i), 0, iconBorder.y)
		clone.ImageTransparency = unequipped
		local tool = value["tool"]
		if tool then
			clone.Tool.Image = tool.TextureId
		end
		clone.Tool.MouseButton1Down:Connect(function() 
			for key, value in pairs(inputKeys) do
				if value["txt"] == clone.Name then
					handleEquip(value["tool"]) 
				end 
			end
		end)

	end	
	template:Destroy()
end

function start() 
	local tools = bp:GetChildren()
	for i = 1, #tools do 
		if tools[i]:IsA("Tool") then 
		for i = 1, #inputOrder do
			local value = inputOrder[i]
			if not value["tool"] then 
				value["tool"] = tools[i]	
				break 
			end
		end
		end
	end
	create()
end

function adjust()
	for key, value in pairs(inputKeys) do
		local tool = value["tool"]
		local icon = frame:FindFirstChild(value["txt"])
		if tool then
			icon.Tool.Image = tool.TextureId
			if tool.Parent == char then 
				icon.ImageTransparency = equipped
			else
				icon.ImageTransparency = unequipped
			end
		else
			icon.Tool.Image = ""
			icon.ImageTransparency = unequipped
		end
	end
end

function onKeyPress(inputObject) 
	local key = inputObject.KeyCode.Name
	local value = inputKeys[key]
	if value and uis:GetFocusedTextBox() == nil then 
		handleEquip(value["tool"])
	end 
end

function handleAddition(adding)
	if adding:IsA("Tool") then
		local new = true
		for key, value in pairs(inputKeys) do
			local tool = value["tool"]
			if tool then
				if tool == adding then
					new = false
				end
			end
		end
		if new then
			for i = 1, #inputOrder do
				local tool = inputOrder[i]["tool"]
				if not tool then 
					inputOrder[i]["tool"] = adding
					break
				end
			end
		end
	adjust()
	end
end

function handleRemoval(removing) 
	if removing:IsA("Tool") then
		if removing.Parent ~= char and removing.Parent ~= bp then
			for i = 1, #inputOrder do
				if inputOrder[i]["tool"] == removing then
					inputOrder[i]["tool"] = nil
					break
				end
			end
		end
		adjust()
	end
end

uis.InputBegan:Connect(onKeyPress)
char.ChildAdded:Connect(handleAddition)
char.ChildRemoved:Connect(handleRemoval)
bp.ChildAdded:Connect(handleAddition)
bp.ChildRemoved:Connect(handleRemoval)
start()