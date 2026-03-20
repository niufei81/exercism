
--[[
- Numbers ending in 1 (unless ending in 11) → `"st"`
- Numbers ending in 2 (unless ending in 12) → `"nd"`
- Numbers ending in 3 (unless ending in 13) → `"rd"`
- All other numbers → `"th"`

- `"Mary", 1` → `"Mary, you are the 1st customer we serve today. Thank you!"`
- `"John", 12` → `"John, you are the 12th customer we serve today. Thank you!"`
- `"Dahir", 162` → `"Dahir, you are the 162nd customer we serve today. Thank you!"`
--]]
return {

  format = function(name, number)
    local seq = number
    local tail = tostring(number):sub(-1)
    local tail2 = tostring(number):sub(-2)
    if tail2 ~= '11' and tail == '1' then
      seq = seq .. 'st'
    elseif tail2 ~= '12' and tail == '2' then
      seq = seq .. 'nd'
    elseif tail2 ~= '13' and tail == '3' then
      seq = seq .. 'rd'
    else
      seq = seq .. 'th'
    end
    return string.format("%s, you are the %s customer we serve today. Thank you!", name, seq)
  end
}
