--- @class init
local init = {}

init.collision = relrequire("collision", ...)
init.button = relrequire("button", ...)
init.text = relrequire("text", ...)
init.math = relrequire("mathUtils", ...)
init.colour = relrequire("colourUtils", ...)
init.spring = relrequire("spring", ...)
init.vector2 = relrequire("vector2", ...)
init.mouse = relrequire("mouseUtils", ...)

init.schedulers = {
    run = relrequire("run", ...),
    window = relrequire("window", ...),
    mouse = relrequire("mouse", ...),
}

return init