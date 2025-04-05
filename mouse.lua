--- @class mouse
local mouse = {
    onRelease = {},
    onPress = {}
}

function mouse.pressed()
    for _, callback in ipairs(mouse.onPress) do
        callback()
    end
end

function mouse.released()
    for _, callback in ipairs(mouse.onReleased) do
        callback()
    end
end

--- @param callback function
function mouse.onPressed(callback)
    table.insert(mouse.onPress, callback)
end
--- @param callback function
function mouse.onReleased(callback)
    table.insert(mouse.onRelease, callback)
end

return mouse