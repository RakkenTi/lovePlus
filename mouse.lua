--- Mouse scheduler
--- @class mouse
local mouse = {
    onRelease = {},
    onPress = {},
    onMove = {},
    onWheelMove = {},
}

-- Functions to call in love
function mouse.pressed()
    for _, callback in ipairs(mouse.onPress) do
        callback()
    end
end

function mouse.released()
    for _, callback in ipairs(mouse.onRelease) do
        callback()
    end
end

function mouse.moved()
    for _, callback in ipairs(mouse.onMove) do
        callback()
    end
end

function mouse.wheelmoved()
    for _, callback in ipairs(mouse.onWheelMove) do
        callback()
    end
end

-- Public functions

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