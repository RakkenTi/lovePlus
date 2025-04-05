--// Modules
local vector2 = require("src.shared.utils.vector2")
local rect = require("src.modules.rect")
local mouse = require("src.shared.utils.mouse")
local run = require("src.shared.utils.run")

--- A class for creating buttons
--- A button is a rect wrapped with special events.
--- @class buttonClass
local button = {}
button.__index = button

--- @class button : buttonClass
--- @param RECT Rect
--- Wraps a rectangle with special button behaviour.
function button.new(RECT)
    local self = setmetatable({}, button)

    self.callback = function() end
    self.hoverCallback = function()  end
    self.isHover = false
    self.rect = RECT
    mouse.onRelease(function()
        if (self.rect:isInside(vector2.new(love.mouse.getPosition()))) then
            if (self.callback) then
                self.callback()
            end
        end
    end)

    run.onUpdate(function()
        self.rect:update()
        local mousePos = love.mouse.getPosition()
        if (self.rect:isInside(mousePos) and not self.isHover) then
            self.isHover = true
            self.hoverCallback(true`)
        else
            if (self.isHover == true) then
                self.hoverCallback(false)
                self.isHover = false
            end
        end
    end)

    run.onDraw(function()
        self.rect:draw()
    end)

    return self
end

--- Set the callback for the button-press action
--- Note that a button press only accounts for a mouse being released within the buttons boundaries.
--- @param callback function
function button:setClickCallback(callback)
    self.callback = callback
end

function button:setHoverCallback(callback)
    self.hoverCallback = callback
end

return button