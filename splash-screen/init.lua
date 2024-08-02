local game_screen = require 'libcadin.game-screen'
local mocha = require 'libcadin.catppuccin'
local window = require 'libcadin.window'

local M = {}

M.canvas = nil
M.pos_x = nil
M.pos_y = nil

local function text_center(text)
  local current_font = love.graphics.getFont()
  local text_height = current_font:getHeight()
  local text_width = current_font:getWidth(text)

  local x = (window.width - text_width) / 2
  local y = (window.height - text_height) / 2

  return x, y, text_width
end

local function splash_colored_text(color, text)
  local x, y, text_width = text_center(text)

  local colored_text = { color, text }

  love.graphics.printf(colored_text, x, y, text_width, 'center')
  -- TODO: Add fade in/fade out effect
end

function M.load()
  M.canvas = love.graphics.newCanvas(game_screen.width, game_screen.height)

  M.pos_x = game_screen.pos_x
  M.pos_y = game_screen.pos_y

  love.graphics.setCanvas(M.canvas)
  love.graphics.clear(mocha.BASE)
  love.graphics.setCanvas()
end

-- Is love.timer the idiomatic way?
function M.start(time)
  if time >= 9 then
    return
  end

  love.graphics.draw(M.canvas, M.pos_x, M.pos_y)

  if time >= 3 and time < 6 then
    splash_colored_text(mocha.RED, 'LÖVE')
  elseif time >= 6 and time < 9 then
    splash_colored_text(mocha.TEXT, 'cadin')
  end
end

return M
