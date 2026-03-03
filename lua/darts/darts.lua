local Darts = {}

function Darts.score(x, y)
    local r = math.sqrt(x ^ 2 + y ^ 2)
    local score = 0
    if r <= 1 then
        score = 10
    elseif r > 1 and r <= 5 then
        score = 5
    elseif r > 5 and r <= 10 then
        score = 1
    end
    return score
end

return Darts
