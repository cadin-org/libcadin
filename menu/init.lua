local input = require 'libcadin.input'
local fonts = require 'libcadin.fonts'
local MenuOption = require 'libcadin.menu.option'

local M = {}

local menu_font = fonts.ps2p_medium

function M.single_player_options()
  return {
    MenuOption:new('Play', menu_font, 'change_mode', 'single_player', true),
    MenuOption:new('Scoreboard not available', menu_font, 'quit', nil, false),
    MenuOption:new('Quit', menu_font, 'quit', nil, false),
  }
end

function M.multi_player_options()
  return {
    MenuOption:new('1 Player', menu_font, 'change_mode', 'single_player', true),
    MenuOption:new('2 Players', menu_font, 'change_mode', 'multiplayer', false),
    MenuOption:new('Scoreboard not available', menu_font, 'quit', nil, false),
    MenuOption:new('Quit', menu_font, 'quit', nil, false),
  }
end

function M.pause_options()
  return {
    MenuOption:new('Resume', menu_font, 'change_state', 'playing', true),
    MenuOption:new('Restart', menu_font, 'new_game', nil, false),
    MenuOption:new('Main Menu', menu_font, 'change_state', 'title_screen', false),
    MenuOption:new('Quit', menu_font, 'quit', nil, false),
  }
end

function M.handle_input(menu_options, key)
  if key == 'return' then
    for idx = 1, #menu_options, 1 do
      if menu_options[idx].is_hl then
        menu_options[idx]:select_option()
        if idx ~= 1 then
          menu_options[1]:shift_hl()
          menu_options[idx]:shift_hl()
        end
        break
      end
    end
  elseif input.is_down_key(key) then
    for idx = 1, #menu_options - 1, 1 do
      if menu_options[idx].is_hl then
        menu_options[idx]:shift_hl()
        menu_options[idx + 1]:shift_hl()
        break
      end
    end
  elseif input.is_up_key(key) then
    for idx = 2, #menu_options, 1 do
      if menu_options[idx].is_hl then
        menu_options[idx]:shift_hl()
        menu_options[idx - 1]:shift_hl()
        break
      end
    end
  end
end

function M.draw(menu_options)
  local pos_factor = 1 - #menu_options

  for idx = 1, #menu_options, 1 do
    menu_options[idx]:draw(pos_factor)
    pos_factor = pos_factor + 2
  end
end

return M
