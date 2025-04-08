--- Random utility methods for any purposes
--- @class mathClass
local math = {}

--- Returns -1, 0, 1 depending on the sign of the number.
--- @param num number
--- @return number
function math.getSignFromNum(num)
    if (num > 0) then return 1 elseif (num < 0) then return -1 else return 0 end
end

--- Clamp a number given a min and max.
--- @param num number
--- @param min number
--- @param max number
--- @return number
function math.clamp(num, min, max)
    if (num > max) then
        return max
    end

    if (num < min) then
        return min
    end

    return num
end

--- Lerp between a and b, using t
function math.lerp(a, b, t)
    return a + (b - a) * t
end

return math