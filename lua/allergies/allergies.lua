--[[
- eggs (1)
- peanuts (2)
- shellfish (4)
- strawberries (8)
- tomatoes (16)
- chocolate (32)
- pollen (64)
- cats (128)
--]]
local allergies_values = {
    "eggs",
    "peanuts",
    "shellfish",
    "strawberries",
    "tomatoes",
    "chocolate",
    "pollen",
    "cats"
}

local function list(score)
    while score >= 256 do
        score = score - 256
    end
    local allergics = {}
    for i = #allergies_values, 1, -1 do
        if score >= 2 ^ (i-1) then
            score = score - 2 ^ (i-1)
            table.insert(allergics, 1, allergies_values[i])
        end
    end
    return allergics
end

local function allergic_to(score, which)
    local allergics = list(score)
    for _, a in ipairs(allergics) do
        if a == which then
            return true
        end
    end
    return false
end

return { list = list, allergic_to = allergic_to }
