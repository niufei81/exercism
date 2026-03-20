local Character = {}

local function ability()
    math.randomseed(os.time())
    local scores = {}
    for i=1, 4 do
        scores[i] = math.random(6)
    end
    table.sort(scores)
    local value = 0
    for i=1, 3 do
        value = value + scores[i]
    end
    return value
end

local function modifier(input)
    return math.floor((input - 10)/2)
end


function Character:new(name)
    local constitution = ability()
    obj = {
        name=name,
        strength=ability(),
        dexterity=ability(),
        constitution=constitution,
        intelligence=ability(),
        wisdom=ability(),
        charisma=ability(),
        hitpoints=10 + modifier(constitution)
    }
    self.__index = self
    setmetatable(obj, self)
    return obj
end

return { Character = Character, ability = ability, modifier = modifier }
