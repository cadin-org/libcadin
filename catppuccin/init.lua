local M = {}

local function from_bytes_to_table(r, g, b)
  local red, green, blue = love.math.colorFromBytes(r, g, b)
  return { red, green, blue }
end

M = {
  ROSEWATER = from_bytes_to_table(245, 224, 220),
  FLAMINGO = from_bytes_to_table(242, 205, 205),
  PINK = from_bytes_to_table(245, 194, 231),
  MAUVE = from_bytes_to_table(203, 166, 247),
  RED = from_bytes_to_table(243, 139, 168),
  MAROON = from_bytes_to_table(235, 160, 172),
  PEACH = from_bytes_to_table(250, 179, 135),
  YELLOW = from_bytes_to_table(249, 226, 175),
  GREEN = from_bytes_to_table(166, 227, 161),
  TEAL = from_bytes_to_table(148, 226, 213),
  SKY = from_bytes_to_table(137, 220, 235),
  SAPPHIRE = from_bytes_to_table(116, 199, 236),
  BLUE = from_bytes_to_table(137, 180, 250),
  LAVENDER = from_bytes_to_table(180, 190, 254),
  TEXT = from_bytes_to_table(205, 214, 244),
  SUBTEXT1 = from_bytes_to_table(186, 194, 222),
  SUBTEXT0 = from_bytes_to_table(166, 173, 200),
  OVERLAY2 = from_bytes_to_table(147, 153, 178),
  OVERLAY1 = from_bytes_to_table(127, 132, 156),
  OVERLAY0 = from_bytes_to_table(108, 112, 134),
  SURFACE2 = from_bytes_to_table(88, 91, 112),
  SURFACE1 = from_bytes_to_table(69, 71, 90),
  SURFACE0 = from_bytes_to_table(49, 50, 68),
  BASE = from_bytes_to_table(30, 30, 46),
  MANTLE = from_bytes_to_table(24, 24, 37),
  CRUST = from_bytes_to_table(17, 17, 27),
}

return M
