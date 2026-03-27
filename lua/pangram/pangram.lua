return function(s)
    local a = string.byte("a")
    local z = string.byte("z")
    local codes = {}
    for i=a, z do
        codes[string.char(i)] = 0
    end
    for i=1, #s do
        local c = s:sub(i,i):lower()
        if codes[c] then
            codes[c] = codes[c] + 1
        end
    end
    for _, v in pairs(codes) do
        if v == 0 then
            return false
        end
    end
    return true
end
