--- @class springClass
local spring = {}
spring.__index = spring

--- @class spring
--- @param targetPos Vector2 Where the spring is rooted, ie: pulling into
--- @param endPos Vector2 The point that the spring is pulling in to the target.
--- @param force number? How much force to attract with
--- @param damping number? How much to diffuse the acceleration by.
--- Creates an instance of the spring class.
function spring.new(targetPos, endPos, force, damping)
    local self = setmetatable({}, spring)

    self.targetPos = targetPos
    self.endPos = endPos
    self.force = force or 1
    self.damping = damping or 2

    return self
end

--// Methods
--- @param targetPos Vector2 Sets the target position of the spring. This is where the force is directed towards.
function spring:setTargetPos(targetPos)
    self.targetPos = targetPos
end

--- @param endPos Vector2 Sets the end position of the spring. This is the position being pulled towards the target.
function spring:setEndPos(endPos)
    self.endPos = endPos
end

function spring:setForce(force)
    self.force = force
end

function spring:setDamping(damping)
    self.damping = damping
end

function spring:get()
    local displacement = self.targetPos - self.endPos
    local acceleration = (displacement * -self.force) / self.damping
    return acceleration
end

return spring