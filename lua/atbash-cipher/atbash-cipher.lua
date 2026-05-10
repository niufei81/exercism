local alphabet = "abcdefghijklmnopqrstuvwxyz"
local len = string.len(alphabet)
local encodes = {}
local decodes = {}
for i=1, #alphabet do
    local j = len-i+1
    encodes[alphabet:sub(i,i)] = alphabet:sub(j,j)
    encodes[alphabet:sub(i,i):upper()] = alphabet:sub(j,j)
    decodes[alphabet:sub(j,j)] = alphabet:sub(i,i)
end


local function encode(phrase)
    local result = ""
    if not phrase or phrase == "" then
        return result
    end
    local j = 0
    for c in phrase:gmatch("[%d%a]") do
        if j ~= 0 and j % 5 == 0 then
            result = result .. ' '
        end
        result = result .. (encodes[c] or c)
        j = j + 1
    end
    return result
end

local function decode(phrase)
    local result = ""
    if not phrase or phrase == "" then
        return result
    end
    for c in phrase:gmatch("[%d%a]") do
        result = result .. (decodes[c] or c)
    end
    return result
end

return { encode = encode, decode = decode }
