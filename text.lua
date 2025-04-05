--- @class textClass
local text = {}
text.__index = text

--- @class text : textClass
--- Creates an instance of the text class.
function text.new()
    local self = setmetatable({}, text)

    return self
end

return text