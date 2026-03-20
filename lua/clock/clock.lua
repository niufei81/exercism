local Clock = {}

function Clock.at(hours, minutes)
    return Clock:new(hours, minutes)
end

local function parse(clock)
    local hour = clock.hour
    local minute = clock.minute

    local hour_delta = math.floor(minute/60)
    local minute_left = minute % 60
    if minute_left < 0 then
        minute_left = minute_left + 60
        hour_delta = hour_delta - 1
    end
    minute = minute_left

    hour = (hour + hour_delta) % 24
    if hour < 0 then
        hour = hour + 24
    end
    clock.hour = hour
    clock.minute = minute
end

function Clock:new(hours, minutes)
    local obj = {
        hour=hours or 0,
        minute=minutes or 0
    }

    parse(obj)
    self.__index = self
    setmetatable(obj, self)
    return obj
end

function Clock:__tostring()
    return string.format("%02d", self.hour) .. ":" .. string.format("%02d", self.minute)
end


function Clock:plus(delta)
    self.minute = self.minute + delta
    parse(self)
    return self
end

function Clock:minus(delta)
    self.minute = self.minute - delta
    parse(self)
    return self
end

function Clock:equals(clock)
    if not clock or not clock.minute or not clock.hour then
        return false
    end
    parse(clock)
    return self.hour == clock.hour and self.minute == clock.minute
end

return Clock