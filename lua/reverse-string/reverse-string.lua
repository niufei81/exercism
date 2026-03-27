return function(s)
    if not s or s == '' then
        return s
    end
    local r = ""
    for i=1, #s do
        r = s:sub(i,i) .. r
    end
    return r
end
