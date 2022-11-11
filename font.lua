local wezterm = require('wezterm')
local module = {}

module.font = wezterm.font({
  family = 'FiraCode NF',
  harfbuzz_features = { 'liga=1'  }
})
module.font_size = 12.5

return module

