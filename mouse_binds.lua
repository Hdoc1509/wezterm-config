local wezterm = require('wezterm')
local M = {}
local paste_right_click = {
  event = {
    Up = {
      streak = 1,
      button = "Right"
    }
  },
  mods = "NONE",
  action = wezterm.action{
    PasteFrom = "PrimarySelection"
  }
}

M.mouse_bindings = { paste_right_click }

return M

