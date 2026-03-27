return function(config)
    local robot = {x=config.x, y=config.y, heading=config.heading}
    
    function robot:move(cmd)
        for i=1, #cmd do
            local c = cmd:sub(i,i)
            if c == "A" then
                self.ahead()
            elseif c == "L" then
                self.left()
            elseif c == "R" then
                self.right()
            else
                error("Invalid command")
            end
        end
    end

    robot.left = function ()
        if robot.heading == "north" then
            robot.heading = "west"
        elseif robot.heading == "west" then
            robot.heading = "south"
        elseif robot.heading == "south" then
            robot.heading = "east"
        elseif robot.heading == "east" then
            robot.heading = "north"
        end
    end

    robot.right = function ()
        if robot.heading == "north" then
            robot.heading = "east"
        elseif robot.heading == "east" then
            robot.heading = "south"
        elseif robot.heading == "south" then
            robot.heading = "west"
        elseif robot.heading == "west" then
            robot.heading = "north"
        end       
    end

    robot.ahead = function ()
        if robot.heading == "north" then
            robot.y = robot.y + 1
        elseif robot.heading == "east" then
            robot.x = robot.x + 1
        elseif robot.heading == "south" then
            robot.y = robot.y - 1
        elseif robot.heading == "west" then
            robot.x = robot.x - 1
        end         
    end
    return robot
end
