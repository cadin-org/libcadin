local M = {}

function M.is_up_key(key)
  local keys_table = { 'k', 'w', 'up' }
  for _, up_key in pairs(keys_table) do
    if key == up_key then
      return true
    end
  end
  return false
end

function M.is_down_key(key)
  local keys_table = { 'j', 's', 'down' }
  for _, down_key in pairs(keys_table) do
    if key == down_key then
      return true
    end
  end
  return false
end

return M
