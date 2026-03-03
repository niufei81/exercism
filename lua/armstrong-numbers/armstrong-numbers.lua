local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
    local l = string.len(tostring(number))
    local v = number
    local r = 0
    for i=1, l do
        local s = v % 10
        v = math.floor(v / 10)
        r = r + s ^ l
        if r > number then
            break
        end
    end
    return r == number
end

return ArmstrongNumbers
