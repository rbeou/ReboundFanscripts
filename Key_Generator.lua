local function generateRandomKey(length)
    local keyCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local key = ""
    local random = math.random
    for i = 1, length do
        local randomIndex = random(1, #keyCharacters)
        key = key .. string.sub(keyCharacters, randomIndex, randomIndex)
    end
    return key
end


local randomKey = generateRandomKey(10)
print(randomKey)
