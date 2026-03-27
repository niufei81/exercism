local function aliquot_sum(n)
    if n <= 0 then
        error("n must more than 0")
    end
    local factors = {}
    for i=1, n-1 do
        if n % i == 0 then
            factors[i] = i
        end
    end
    local sum = 0
    for _, v in pairs(factors) do
        sum = sum + v
    end
    return sum
end

local function classify(n)
    local sum = aliquot_sum(n)
    if sum == n then
        return "perfect"
    elseif sum > n then
        return "abundant"
    else
        return "deficient"
    end
    
end

return { aliquot_sum = aliquot_sum, classify = classify }
