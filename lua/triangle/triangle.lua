--[[
An _equilateral_ triangle has all three sides the same length.

An _isosceles_ triangle has at least two sides the same length.
(It is sometimes specified as having exactly two sides the same length, but for the purposes of this exercise we'll say at least two.)

A _scalene_ triangle has all sides of different lengths.
--]]

local triangle = {}

local function check(a, b, c)
    if a <= 0 or b <= 0 or c <= 0 or a + b <= c or a + c <= b or b + c <= a then
        error("Input Error")
    end
end

function triangle.kind(a, b, c)
    check(a, b, c)
    if a == b or a == c or b == c then
        if a == b and b == c then
            return "equilateral"
        end
        return "isosceles"
    end
    return "scalene"
end

return triangle
