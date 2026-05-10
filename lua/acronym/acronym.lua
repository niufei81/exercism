return function(s)
    local result = ""
    for c in s:gmatch("[^%s]+") do
        for x in c:gmatch("[%a']+") do
            result = result .. x:sub(1,1):upper()
        end
    end
    return result
end
