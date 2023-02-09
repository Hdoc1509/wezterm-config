local wezterm = require('wezterm')
local act = wezterm.action
local M = {}

M.keys = {
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
  },
  {
    key = 's',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical({ domain = 'CurrentPaneDomain' }),
  },
  { key = 'UpArrow', mods = 'SHIFT', action = act.ScrollByLine(-1) },
  { key = 'DownArrow', mods = 'SHIFT', action = act.ScrollByLine(1) },
  { key = 'End', mods = 'SHIFT', action = act.ScrollToBottom },
  { key = 'Home', mods = 'SHIFT', action = act.ScrollToTop },
  { key = 'F11', action = act.ToggleFullScreen },
}

return M
