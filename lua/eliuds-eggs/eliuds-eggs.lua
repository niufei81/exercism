local EliudsEggs = {}

function EliudsEggs.egg_count(number)
    local v = number
    local r = 0
    while v > 0 do
        r = r + v % 2
        v = math.floor(v/2)
    end
    return r
end

return EliudsEggs
