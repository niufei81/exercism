local SquareRoot = {}
local math = require("math")

function SquareRoot.square_root(radicand)
    if radicand < 0 then
        return 0
    end
    local precision = 0.01
    local t = radicand

    while math.abs(radicand - t * t) > precision do
        t = tonumber(string.format("%.2f", (radicand / t + t) / 2))
    end
    return t
end

return SquareRoot
