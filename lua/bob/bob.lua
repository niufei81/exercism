local ANSWER_SURE = "Sure."
local ANSWER_CHILL_OUT = "Whoa, chill out!"
local ANSWER_CALM_DOWN = "Calm down, I know what I'm doing!"
local ANSWER_FINE = "Fine. Be that way!"
local ANSWER_WHATEVER = "Whatever."

--[[
- **"Sure."**
  This is his response if you ask him a question, such as "How are you?"
  The convention used for questions is that it ends with a question mark.
- **"Whoa, chill out!"**
  This is his answer if you YELL AT HIM.
  The convention used for yelling is ALL CAPITAL LETTERS.
- **"Calm down, I know what I'm doing!"**
  This is what he says if you yell a question at him.
- **"Fine. Be that way!"**
  This is how he responds to silence.
  The convention used for silence is nothing, or various combinations of whitespace characters.
- **"Whatever."**
  This is what he answers to anything else.
--]]

local bob = {}


local function trim(s)
    if not s then return s end
    return (s:gsub("^%s*(.-)%s*$", "%1"))
  end

function bob.hey(say)
    say = trim(say)
    if not say or say == "" then
        return ANSWER_FINE
    end
    local answer = ANSWER_WHATEVER
    if say:match("%a") and say:upper() == say then
        if say:sub(-1) == "?" then
            answer = ANSWER_CALM_DOWN
        else
            answer = ANSWER_CHILL_OUT
        end
    elseif say:sub(-1) == "?" then
        answer = ANSWER_SURE
    else
        answer = ANSWER_WHATEVER
    end
    return answer
end

return bob
