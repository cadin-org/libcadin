local window = require 'libcadin.window'

local M = {}

M.width = 800
M.height = 600

M.pos_x0 = window.center.x - (M.width / 2)
M.pos_y0 = window.center.y - (M.height / 2)

M.pos_x1 = M.pos_x0 + M.width
M.pos_y1 = M.pos_y0 + M.height

return M
