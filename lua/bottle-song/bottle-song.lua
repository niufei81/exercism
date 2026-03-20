local BottleSong = {}

local s_1 = "%s green bottle%s hanging on the wall,\n"
local s_2 = "And if one green bottle should accidentally fall,\n"
local s_3 = "There'll be %s green bottle%s hanging on the wall.\n"

local NUM_MAP = {
    [1] = "one",
    [2] = "two",
    [3] = "three",
    [4] = "four",
    [5] = "five",
    [6] = "six",
    [7] = "seven",
    [8] = "eight",
    [9] = "nine",
    [10] = "ten",
    [0] = "no"
}

--[[
        "Ten green bottles hanging on the wall,\n",
        "Ten green bottles hanging on the wall,\n",
        "And if one green bottle should accidentally fall,\n",
        "There'll be nine green bottles hanging on the wall.\n",
        "\n",
        "Nine green bottles hanging on the wall,\n",
        "Nine green bottles hanging on the wall,\n",
        "And if one green bottle should accidentally fall,\n",
        "There'll be eight green bottles hanging on the wall.\n"
--]]

function capitalize(s)
    return s:sub(1,1):upper() .. s:sub(2)
end


function BottleSong.recite(start_bottles, take_down)
    local result = ""
    local count = start_bottles
    for i=1, take_down do
        result = result .. string.format(s_1, capitalize(NUM_MAP[count]), count > 1 and "s" or "")
        result = result .. string.format(s_1, capitalize(NUM_MAP[count]), count > 1 and "s" or "")
        result = result .. string.format(s_2)
        count = count - 1
        result = result .. string.format(s_3, NUM_MAP[count], (count > 1 or count == 0) and "s" or "" )
        if i ~= take_down then
            result = result .. "\n"
        end
    end
    return result
end

return BottleSong
