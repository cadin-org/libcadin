local window = require 'libcadin.window'

local M = {}

M.width = 800
M.height = 600

M.pos_x = window.center.x - (M.width / 2)
M.pos_y = window.center.y - (M.height / 2)

return M
