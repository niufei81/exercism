--[[
00001 = wink
00010 = double blink
00100 = close your eyes
01000 = jump
10000 = Reverse the order of the operations in the secret handshake.
--]]

return function(n)
    if n <= 0 then
        return {}
    end
    local reverse = n >> 4 & 1 == 1
    local operates = {}
    if n & 1 == 1  then
        table.insert(operates, "wink")
    end
    if n >> 1 & 1 == 1 then
        table.insert(operates, "double blink")
    end  
    if n >> 2 & 1 == 1 then
        table.insert(operates, "close your eyes")
    end
    if n >> 3 & 1 == 1 then
        table.insert(operates, "jump")
    end
    if reverse then
        local reverse_operates = {}
        for i=1, #operates do
            reverse_operates[i] = operates[#operates - i + 1]
        end
        operates = reverse_operates
    end
    return operates
end
