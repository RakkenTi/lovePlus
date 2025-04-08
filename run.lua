--- Mouse scheduler
--- @class runScheduler
local run = {
    onDrawT = {},
    onUpdateT = {},
    onQuitT = {},
    onLoadT = {},
}

-- Functions to call in love
function run.draw()
    for _, callback in ipairs(run.onDrawT) do
        callback()
    end
end

function run.update()
    for _, callback in ipairs(run.onUpdateT) do
        callback()
    end
end

function run.quit()
    for _, callback in ipairs(run.onQuitT) do
        callback()
    end
end

function run.load()
    for _, callback in ipairs(run.onLoadT) do
        callback()
    end
end

-- Public functions

--- @param callback function
function run.onDraw(callback)
    table.insert(run.onDrawT, callback)
end

--- @param callback function
function run.onUpdate(callback)
    table.insert(run.onUpdateT, callback)
end

--- @param callback function
function run.onQuit(callback)
    table.insert(run.onQuitT, callback)
end

--- @param callback function
function run.onLoad(callback)
    table.insert(run.onLoadT, callback)
end

return run