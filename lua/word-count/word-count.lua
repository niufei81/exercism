local function trim_outer_quotes(word)
  return word:gsub("^'+", ""):gsub("'+$", "")
end

local function count_words(s)
  local result = {}
  for raw in s:lower():gmatch("[%a%d']+") do
    local w = trim_outer_quotes(raw)
    if w ~= "" then
      result[w] = (result[w] or 0) + 1
    end
  end
  return result
end

return { count_words = count_words }
