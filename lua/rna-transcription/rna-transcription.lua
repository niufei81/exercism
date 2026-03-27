--[[
- `G` -> `C`
- `C` -> `G`
- `T` -> `A`
- `A` -> `U`
--]]

local transcriptions = {
    G = "C",
    C = "G",
    T = "A",
    A = "U"
}

return function(dna)
    local result = ""
    for i=1, #dna do
        result = result .. transcriptions[dna:sub(i,i)]
    end
    return result
end
