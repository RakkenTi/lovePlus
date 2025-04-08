--- Window scheduler
--- @class windowScheduler
local window = {
    onDirectoryDroppedT = {},
    onDisplayRotatedT = {},
    onFileDroppedT = {},
    onFocusT = {},
    onMouseFocusT = {},
    onResizeT = {},
    onVisibleT = {},
}

-- Functions to call in love
function window.directoryDropped(...)
    for _, callback in ipairs(window.onDirectoryDroppedT) do
        callback(...)
    end
end

function window.displayRotated(...)
    for _, callback in ipairs(window.onDisplayRotatedT) do
        callback(...)
    end
end

function window.fileDropped(...)
    for _, callback in ipairs(window.onFileDroppedT) do
        callback(...)
    end
end

function window.focus(...)
    for _, callback in ipairs(window.onFocusT) do
        callback(...)
    end
end

function window.mouseFocus(...)
    for _, callback in ipairs(window.onMouseFocusT) do
        callback(...)
    end
end

function window.resize(...)
    for _, callback in ipairs(window.onResizeT) do
        callback(...)
    end
end

function window.visible(...)
    for _, callback in ipairs(window.onVisibleT) do
        callback(...)
    end
end

-- Public functions

--- @param callback function
function window.onDirectoryDropped(callback)
    table.insert(window.onDirectoryDroppedT, callback)
end

--- @param callback function
function window.onDisplayRotated(callback)
    table.insert(window.onDisplayRotatedT, callback)
end

--- @param callback function
function window.onFileDropped(callback)
    table.insert(window.onFileDroppedT, callback)
end

--- @param callback function
function window.onFocus(callback)
    table.insert(window.onFocusT, callback)
end

--- @param callback function
function window.onMouseFocus(callback)
    table.insert(window.onMouseFocusT, callback)
end

--- @param callback function
function window.onResize(callback)
    table.insert(window.onResizeT, callback)
end

--- @param callback function
function window.onVisible(callback)
    table.insert(window.onVisibleT, callback)
end

return window