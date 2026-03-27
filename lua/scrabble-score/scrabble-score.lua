--[[
| Letter                       | Value |
| ---------------------------- | ----- |
| A, E, I, O, U, L, N, R, S, T | 1     |
| D, G                         | 2     |
| B, C, M, P                   | 3     |
| F, H, V, W, Y                | 4     |
| K                            | 5     |
| J, X                         | 8     |
| Q, Z                         | 10    |
--]]

local score_letters = {
    [1] = { "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" },
    [2] = { "D", "G" },
    [3] = { "B", "C", "M", "P" },
    [4] = { "F", "H", "V", "W", "Y" },
    [5] = { "K" },
    [8] = { "J", "X" },
    [10] = { "Q", "Z" },
}

local letter_scores = {}
for score, arr in pairs(score_letters) do
    for i = 1, #arr do
        letter_scores[arr[i]] = score
    end
end


local function score(word)
    if not word or #word == 0 then
        return 0
    end
    local sum = 0
    for i=0, #word do
        local c = word:sub(i,i):upper()
        if letter_scores[c] then
            sum = sum + letter_scores[c]
        end
    end
    return sum
end

return { score = score }
