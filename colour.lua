--- @class colour
local colourUtils = {}

--- Divide all numbers in a 3-length array by 255.
--- Useful for converting RGB to HST.
--- @param colour number[]
--- @return number[]
function colourUtils.RGBtoHST(colour)
    return {colour[1] / 255, colour[2] / 255, colour[3] / 255}
end

return colourUtils