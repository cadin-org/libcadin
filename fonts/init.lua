local M = {}

local press_start_2p_path = 'libcadin/fonts/press_start_2p/PressStart2P-Regular.ttf'

M.ps2p_small = love.graphics.newFont(press_start_2p_path, 16)
M.ps2p_medium = love.graphics.newFont(press_start_2p_path, 24)
M.ps2p_large = love.graphics.newFont(press_start_2p_path, 48)

return M
