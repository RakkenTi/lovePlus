--- @class vector2Class
local vector2 = {}
vector2.__index = vector2

--- @class Vector2
--- Creates a new Vector2d object.
--- @field public x number
--- @field public y number
--- @field public Magnitude number
--- @field public Unit Vector2
--- @param x number
--- @param y number
--- @return Vector2
function vector2.new(x, y)
    local self = setmetatable({
    }, vector2)

    self.x = x or 0
    self.y = y or 0
    
    return self
end

--// Public Methods
function vector2:extract()
    return {self.x, self.y}
end

--// Metamethods
function vector2.__index(t, k)

    if (k == "Magnitude") then
        return math.sqrt(t.x ^ 2 + t.y ^ 2)
    end

    if (k == "Unit") then
        return vector2.new(t.x / t.Magnitude, t.y / t.Magnitude)
    end

    return rawget(vector2, k)
end

function vector2.__add(a, b)
    return vector2.new(a.x + b.x, a.y + b.y)
end

function vector2.__sub(a, b)
    return vector2.new(a.x - b.x, a.y - b.y)
end

function vector2.__div(a, b)
    if (type(a) == "table" and type(b) == "table") then
        return vector2.new(a.x / b.x, a.y / b.y)
    end
    if (type(a) == "table" and type(b) == "number") then
        return vector2.new(a.x / b, a.y / b)
    end

    error("Invalid parameters to division involving Vector2.")
    return nil
end

function vector2.__mul(a, b)
    if (type(a) == "table" and type(b) == "table") then
        return vector2.new(a.x * b.x, a.y * b.y)
    end
    if (type(a) == "table" and type(b) == "number") then
        return vector2.new(a.x * b, a.y * b)
    end

    error("Invalid parameters to multiplication involving Vector2.")
    return nil
end

function vector2.__eq(a, b)
    return a.x == b.x and a.y == b.y
end

function vector2.__tostring(a)
    return "("..a.x..","..a.y..")"
end

return vector2