local Proverb = {}

local template_1 = "For want of a %s the %s was lost.\n"
local template_2 = "And all for the want of a %s.\n"

function Proverb.recite(strings)
    local result = ""
    if #strings > 0 then
        for i = 2, #strings do
            result = result .. string.format(template_1, strings[i-1], strings[i])
        end
        result = result .. string.format(template_2, strings[1])
    end
    return result
end

return Proverb
