return function(matrix)
    local result = {}
    for i=1, #matrix do
        if #matrix[i] == 0 then
            break
        end
        local max_row = math.max(table.unpack(matrix[i]))
        for j=1, #matrix[i] do
            if matrix[i][j] == max_row then
                local matched = true
                for x=1, #matrix do
                    if matrix[x][j] < max_row then
                        matched = false
                        break
                    end
                end
                if matched then
                    table.insert(result, {row=i, column=j})
                end
            end
        end

    end
    return result
end
