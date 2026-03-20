return function(numbers)
    return {
        to = function(level)
            local sum = 0
            local values = {}
            for _,v in ipairs(numbers) do
                local tmp = 0
                while tmp < level do
                    values[tmp] = tmp
                    tmp = tmp + v
                end
            end
            for _, v in pairs(values) do
                sum = sum + v
            end
            return sum
        end
    }

end
