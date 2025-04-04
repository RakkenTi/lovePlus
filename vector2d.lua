local vector2d = {}
vector2d.__index = vector2d

function vector2d.new(x, y)
    local self = setmetatable({

    }, vector2d)

    self.x = x or 0
    self.y = y or 0
    
    return self
end

--// Metamethods
function vector2d.__index(t, k)

    if (k == "Magnitude") then
        return math.sqrt(t.x ^ 2 + t.y ^ 2)
    end

    if (k == "Unit") then
        return vector2d.new(t.x / t.Magnitude, t.y / t.Magnitude)
    end

    return rawget(t, k)
end

function vector2d.__add(a, b)
    return vector2d.new(a.x + b.x, a.y + b.y)
end

function vector2d.__sub(a, b)
    return vector2d.new(a.x - b.x, a.y - b.y)
end

function vector2d.__div(a, b)
    return vector2d.new(a.x / b, a.y / b)
end

function vector2d.__mul(a, b)
    return vector2d.new(a.x * b, a.y * b)
end

function vector2d.__eq(a, b)
    return a.x == b.x and a.y == b.y
end

function vector2d.__tostring(a)
    return "("..a.x..","..a.y..")"
end

return vector2d