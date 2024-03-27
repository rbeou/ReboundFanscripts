-- Windows key generator thing.
local function generateRandomKey()
    local key = ""
    for i = 1, 5 do
        key = key .. string.char(math.random(65, 90)) 
    end
    key = key .. "-" 
    return key
end

local keys = {}
for i = 1, 5 do
    keys[i] = generateRandomKey()
end

local concatenatedKeys = table.concat(keys)

print(concatenatedKeys)

local function generateRandomKey()
    local key = ""
    local alphabet = "abcdefghijklmnopqrstuvwxyz"
    for i = 1, 5 do
        local randomIndex = math.random(1, #alphabet)
        key = key .. string.sub(alphabet, randomIndex, randomIndex)
    end
    return key
end
