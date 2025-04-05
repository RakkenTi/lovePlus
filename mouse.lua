--- Mouse scheduler
--- @class mouse
local mouse = {
    onRelease = {},
    onPress = {},
    onMove = {},
    onWheelMove = {},
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

--- @param callback function
function mouse.onWheelMoved(callback)
    table.insert(mouse.onWheelMove, callback)
end

--- @param callback function
function mouse.onMove(callback)
    table.insert(mouse.onMove, callback)
end

return mouse