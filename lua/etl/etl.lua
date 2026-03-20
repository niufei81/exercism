return {
  transform = function(dataset)
    local result = {}
    for score, alphabets in pairs(dataset) do
      for _, a in ipairs(alphabets) do
        result[a:lower()] = score
      end
    end
    table.sort(result)
    return result
  end
}
