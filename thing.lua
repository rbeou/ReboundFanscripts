-- Define the properties of the parts to be created
local partProperties = {
    Size = Vector3.new(4, 1, 4),  -- Size of the part
    Color = Color3.new(1, 0, 0),   -- Color of the part (Red)
    Position = Vector3.new(0, 10, 0), -- Starting position of the part
}

-- Function to create a new part
local function createPart()
    local newPart = Instance.new("Part")
    for property, value in pairs(partProperties) do
        newPart[property] = value
    end
    newPart.Parent = game.Workspace -- Set the parent of the part to the Workspace
end

-- Number of parts to create
local numPartsToCreate = 10

-- Loop to create parts repeatedly
for i = 1, numPartsToCreate do
    createPart()
end
