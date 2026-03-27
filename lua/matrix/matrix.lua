return function(s)
    if not s or s == "" then
        return nil
    end
    local matrix = {}
    local i = 1
    for row in s:gmatch("[^\n]+") do
        local j = 1
        for c in row:gmatch("%S+") do
            if not matrix[i] then
                matrix[i] = {}
            end
            matrix[i][j] = tonumber(c)
            j = j + 1
        end
        i = i + 1
    end

    return {
        row = function (irow)
            return matrix[irow]
        end,
        column = function (icolumn)
            local cl = {}
            for x = 1, #matrix do
                cl[x] = matrix[x][icolumn]
            end
            return cl
        end
    }
end
