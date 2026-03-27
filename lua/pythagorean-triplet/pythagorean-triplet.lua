return function(sum)
    local a_loop = math.floor(sum/3)
    local result = {}
    for a=1, a_loop do
        for b=a+1, sum do
            local c = sum - a - b
            if c > b and a^2 + b^2 == c^2 then
                table.insert(result, {a,b,c})
            end
        end 
    end
    return result
end
