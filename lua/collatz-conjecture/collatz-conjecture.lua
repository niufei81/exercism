return function(n)
    if n <= 0 then
        error("n must more than 0")
    end
    local i = 0
    local tmp = n
    while tmp ~= 1 do
        if tmp % 2 == 0 then
            tmp = tmp / 2
        else
            tmp = tmp * 3 + 1
        end
        i = i + 1
    end
    return i
end
