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
    local group_count = 0
    for i=1, #phrase do
        local c = phrase:sub(i, i)
        if c and c ~= ' 'then
            if group_count == 5 then
                result = result .. ' '
                group_count = 0
            end            
            result = result .. encodes[c]
            group_count = group_count + 1
        end 
    end
end

local function decode(phrase)
    local result = ""
    if not phrase or phrase == "" then
        return result
    end
    for i=1, #phrase do
        local c = phrase:sub(i, i)
        if c ~= ' ' then
            result = result .. decodes[c]
        end 
    end
    return result
end

return { encode = encode, decode = decode }
