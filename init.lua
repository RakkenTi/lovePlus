--- @class lovePlus
local init = {}

--- @type collisionClass
init.collision = relrequire("collision", ...)

--- @type buttonClass
init.button = relrequire("button", ...)

--- @type textClass
init.text = relrequire("text", ...)

--- @type mathClass
init.math = relrequire("math", ...)

--- @type colour
init.colour = relrequire("colour", ...)

--- @type springClass
init.spring = relrequire("spring", ...)

--- @type Vector2Class
init.vector2 = relrequire("vector2", ...)

--- @type mouseUtils
init.mouseUtils = relrequire("mouseUtils", ...)

init.schedulers = {
    --- @type runScheduler
    run = relrequire("run", ...),
    --- @type windowScheduler
    window = relrequire("window", ...),
    --- @type mouseScheduler
    mouse = relrequire("mouse", ...),
}

return init