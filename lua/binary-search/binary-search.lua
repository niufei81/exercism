return function(array, target)
    local s, e = 1, #array
    while s <= e do
        local i = math.floor((s+e)/2)
        if i < s then
            break
        end
        local c = array[i]
        if c > target then
            e = i-1
        elseif c < target then
            s = i+1
        elseif c == target then
            return i
        end
    end
    return -1
end
