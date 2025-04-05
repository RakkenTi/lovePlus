--- Mouse scheduler
--- @class mouse
local mouse = {
    onReleaseT = {},
    onPressT = {},
    onMoveT = {},
    onWheelMoveT = {},
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
function mouse.onPress(callback)
    table.insert(mouse.onPressT, callback)
end

--- @param callback function
function mouse.onRelease(callback)
    table.insert(mouse.onReleaseT, callback)
end

--- @param callback function
function mouse.onWheelMove(callback)
    table.insert(mouse.onWheelMoveT, callback)
end

--- @param callback function
function mouse.onMove(callback)
    table.insert(mouse.onMoveT, callback)
end

return mouse