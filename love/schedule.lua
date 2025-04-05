--- @class scheduleClass
local schedule = {}
schedule.__index = schedule

--- @class schedule
--- Creates an instance of the schedule class.
function schedule.new()
    local self = setmetatable({}, schedule)

    return self
end

return schedule