local s = string.byte("a")
local e = string.byte("z")

return {
  rotate = function(input, key)
    
    local r = ""
    for i=1, #input do
      local c = input:sub(i,i)
      local b = string.byte(c:lower())
      if b >= s and b <= e then
        b = b + key
        if b > e then
          b = s + (b-e-1)
        end
        c = c == c:upper() and string.char(b):upper() or string.char(b)
      end
      r = r .. c
    end
    return r
  end
}
