local wezterm = require('wezterm')
local M = {}

M.font = wezterm.font({
  family = 'FiraCode NF',
  harfbuzz_features = { 'liga=1'  }
})
M.font_size = 12.5

return M

