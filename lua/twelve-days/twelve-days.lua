local seq = {"first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"}
local loves = {
    "a Partridge",
    "two Turtle Doves",
    "three French Hens", 
    "four Calling Birds", 
    "five Gold Rings", 
    "six Geese-a-Laying",
    "seven Swans-a-Swimming", 
    "eight Maids-a-Milking", 
    "nine Ladies Dancing", 
    "ten Lords-a-Leaping", 
    "eleven Pipers Piping", 
    "twelve Drummers Drumming"
}

local template = "On the %s day of Christmas my true love gave to me: %s in a Pear Tree."

local function recite(start_verse, end_verse)
    local result = {}
    for i = start_verse, end_verse do
        local love_i = ""
        if i == 1 then
            love_i = loves[i]
        else
            for j = i, 1, -1 do
                if j == 1 then
                    love_i = love_i .. "and " .. loves[j]
                else
                    love_i = love_i .. loves[j] .. ", "
                end
            end
        end
        local verb = string.format(template, seq[i], love_i)
        table.insert(result, verb)
    end
    return result
end

return { recite = recite }
