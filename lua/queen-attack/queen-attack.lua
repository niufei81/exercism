return function(pos)
    if not pos.row or pos.row < 0 or pos.row >= 8 or not pos.column or pos.column < 0 or pos.column >= 8 then
        error("Invalid pos")
    end

    local obj = {row=pos.row, column=pos.column}
    obj.can_attack = function (other)
        if obj.row == other.row or obj.column == other.column then
            return true
        end
        local diff = obj.row - other.row
        if obj.column - diff == other.column or obj.column + diff == other.column then
            return true
        end
        return false
    end

    return obj
end
