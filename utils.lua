--- Random utility methods for any purposes
--- @class Util
local util = {}

--- Returns -1, 0, 1 depending on the sign of the number.
--- @param num number
--- @return number
function util.getSignFromNum(num)
    if (num > 0) then return 1 elseif (num < 0) then return -1 else return 0 end
end

--- Get the position of the mouse as a number ranging from 0-1.
--- @return (nunber, number)
function util.getMouseScalePos()
    local screenSizeX, screenSizeY = love.window.getMode()
    local mousePosX, mousePosY = love.mouse.getPosition()
    return mousePosX / screenSizeX, mousePosY / screenSizeY
end

--- Clamp a number given a min and max.
--- @param num number
--- @param min number
--- @param max number
--- @return number
function util.clamp(num, min, max)
    if (num > max) then
        return max
    end

    if (num < min) then
        return min
    end

    return num
end

return util