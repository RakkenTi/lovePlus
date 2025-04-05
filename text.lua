local vector2 = require("src.shared.utils.vector2")
local utils = require("src.shared.utils.utils")
local run = require("src.shared.utils.run")

local screenSize = vector2.new(love.window.getMode())

--- @class textClass
local textClass = {}
textClass.__index = textClass

run.onUpdate(function()
    screenSize = vector2.new(love.window.getMode())
end)

--- @class text : textClass
--- Creates an instance of the text class.
--- @param text string The text to display
--- @param font Font The font object for thew new font.
--- @param position Vector2 The position of the text.
--- @param anchor Vector2 The anchor position of the text.
--- @param colour number[]
function textClass.new(text, font, position, anchor, colour)
    local self = setmetatable({}, text)

    self.text = text
    self.font = font
    self.pos = position
    self.anchor = anchor
    self.colour = colour or {1, 1, 1}

    return self
end

function textClass:setColour(newColour)
    self.colour = newColour
end

function textClass:setText(newText)
    self.text = newText
end

--- Set a new font.
--- @param newFont Font A font object for the new font.
function textClass:setFont(newFont)
    self.font = newFont
end

function textClass:setPos(newPos)
    self.pos = newPos
end

function textClass:setAnchor(newAnchor)
    self.anchor = newAnchor
end

function textClass:setColour(newColour)
    self.colour = utils.RGBtoHST(newColour)
end

function textClass:draw()
    love.graphics.setColor(self.colour)
    love.graphics.setFont(self.font)
    love.graphics.print(self.text, self.pos.x * screenSize.x, self.pos.y * screenSize.y)
    love.graphics.setFont()
    self.graphics.setColor()
end

return textClass