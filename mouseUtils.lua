--- @class mouseUtils
local mouseUtils = {}

--- Get the position of the mouse as a number ranging from 0-1.
--- @return number, number
function mouseUtils.getMouseScalePos()
    local screenSizeX, screenSizeY = love.window.getMode()
    local mousePosX, mousePosY = love.mouse.getPosition()
    return mousePosX / screenSizeX, mousePosY / screenSizeY
end

return mouseUtils