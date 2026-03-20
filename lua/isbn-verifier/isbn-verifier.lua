return {
  valid = function(isbn)
    if not isbn or #isbn < 10 then
      return false
    end
    local value = 0
    local j = 10
    local n
    for i=1, #isbn do
      if j <= 0 then
        return false
      end
      local c = isbn:sub(i,i)
      if c ~= "-" then
        if j == 1 and c:lower() == 'x' then
          value = value + j * 10
        else 
          n = tonumber(c)
          if not n then
            return false
          end
          value = value + n*j
        end
        j = j-1
      end
    end
    return value % 11 == 0
  end
}
