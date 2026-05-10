local all_your_base = {}

all_your_base.convert = function(from_digits, from_base)
    local obj = {}
    local sum = 0
    for i=1, #from_digits do
        local d = from_digits[i]
        if from_base <= 1 then
            error("invalid input base")
        end
        if d >= from_base then
            error("digit out of range")
        elseif d < 0 then
            error("negative digits are not allowed")
        end

        sum = sum + d * from_base^(#from_digits-i)
    end
    obj.to = function (to_base)
        if to_base <= 1 then
            error("invalid output base")
        end
        local left = sum
        if left == 0 then
            return {0}
        end

        local result = {}
        while left > 0 do
            table.insert(result, 1, tonumber(left % to_base))
            left = math.floor(left / to_base)
        end 
        return result
    end
    return obj
end

return all_your_base
