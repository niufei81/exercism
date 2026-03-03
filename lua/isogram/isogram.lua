return function(s)
    local map = {}
    for i=1, #s do
        local c = string.lower(s:sub(i, i))
        if c ~= ' ' and c ~= '-' and map[c] then
            return false
        end
        map[c] = c
    end
    return true
end
