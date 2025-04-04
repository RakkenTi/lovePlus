-- for checking collisions
local collision = {}

--- Checks if a given position is within a rectangle defined by a position and size.
--- Assumes that (0,0) is the top-left.
--- Also assumes that all dimensions are in pixels.
--- @return boolean
function collision.checkRect(targetPosX, targetPosY, objectPosX, objectPosY, xSize, ySize)
    local isXBound = targetPosX > objectPosX and targetPosX < (objectPosX + xSize)
    local isYBound = targetPosY > objectPosY and targetPosY < (objectPosY + ySize)
    return isXBound and isYBound
end

return collision