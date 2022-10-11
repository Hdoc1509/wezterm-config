local wezterm = require('wezterm')
local module = {}

module.mouse_bindings = {
  {
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
}

return module

