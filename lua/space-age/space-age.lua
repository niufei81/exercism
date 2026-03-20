local SpaceAge = {}
SECONDS_OF_YEAR_ON_EARTH = 365.25 * 24 * 3600

local function round(num)
    return tonumber(string.format("%.2f", num))
end

--[[
| Mercury | 0.2408467                     |
| Venus   | 0.61519726                    |
| Earth   | 1.0                           |
| Mars    | 1.8808158                     |
| Jupiter | 11.862615                     |
| Saturn  | 29.447498                     |
| Uranus  | 84.016846                     |
| Neptune | 164.79132                     |
--]]

function SpaceAge:new(seconds)
    local obj = {
        seconds=seconds
    }
    obj.on_earth = function ()
            return round(seconds / (SECONDS_OF_YEAR_ON_EARTH * 1)) 
    end

    obj.on_mercury = function()
        return round(obj.on_earth() / 0.2408467)
    end

    obj.on_venus = function()
        return round(seconds / (SECONDS_OF_YEAR_ON_EARTH * 0.61519726))
    end

    obj.on_mars = function()
        return round(obj.on_earth() / 1.8808158)
    end

    obj.on_jupiter = function()
        return round(obj.on_earth() / 11.862615)
    end

    obj.on_saturn = function()
        return round(obj.on_earth() / 29.447498)
    end

    obj.on_uranus = function()
        return round(obj.on_earth() / 84.016846)
    end

    obj.on_neptune = function()
        return round(obj.on_earth() / 164.79132)
    end
    
    return obj
end



return SpaceAge
