--- Window scheduler
--- @class window
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
function window.directoryDropped(path)
    for _, callback in ipairs(window.onDirectoryDroppedT) do
        callback(path)
    end
end

function window.displayRotated(rotation)
    for _, callback in ipairs(window.onDisplayRotatedT) do
        callback(rotation)
    end
end

function window.fileDropped(filename)
    for _, callback in ipairs(window.onFileDroppedT) do
        callback(filename)
    end
end

function window.focus(focused)
    for _, callback in ipairs(window.onFocusT) do
        callback(focused)
    end
end

function window.mouseFocus(focused)
    for _, callback in ipairs(window.onMouseFocusT) do
        callback(focused)
    end
end

function window.resize(w, h)
    for _, callback in ipairs(window.onResizeT) do
        callback(w, h)
    end
end

function window.visible(visible)
    for _, callback in ipairs(window.onVisibleT) do
        callback(visible)
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