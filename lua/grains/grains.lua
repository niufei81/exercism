local grains = {}

function grains.square(n)
    return 2 ^ (n-1)
end

function grains.total()
    local total = 0
    for i=1, 64 do
        total = total + grains.square(i)
    end
    return total
end

return grains
