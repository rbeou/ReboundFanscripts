-- Reference to the local player
local player = game.Players.LocalPlayer

-- Reference to the part you want to turn into a tool
local part = game.Workspace.Part -- Change 'Part' to the name of your part

-- Function to create a tool from the part
local function createToolFromPart(part)
    -- Create a new tool
    local tool = Instance.new("Tool")
    
    -- Clone the part and parent it to the tool
    local partClone = part:Clone()
    partClone.Parent = tool
    
    -- Set the tool properties
    tool.RequiresHandle = false -- No handle required
    tool.Name = "PartTool" -- Name of the tool
    tool.Parent = player -- Parent the tool to the player
    
    -- Return the tool
    return tool
end

-- Create the tool from the part
local partTool = createToolFromPart(part)

-- Put the tool into the player's backpack
partTool.Parent = player.Backpack
