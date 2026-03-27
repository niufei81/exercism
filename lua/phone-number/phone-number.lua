local function clean(s)
    local number = ""
    for c in s:gmatch("%d") do
        number = number .. c
    end
    if #number ~= 11 and #number ~= 10 then
        error("Invalid number")
    end

    if #number == 11 then
        if number:sub(1,1) ~= "1" then
            error("invalid number")
        end
        number = number:sub(2)
    end

    if tonumber(number:sub(1,1)) < 2 or tonumber(number:sub(4,4)) < 2 then
        error("Invalid number")
    end
    return number
end

return { clean = clean }
