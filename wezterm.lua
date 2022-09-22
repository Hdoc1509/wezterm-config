local wezterm = require('wezterm')

return {
  colors = {
    background = '#000',
    cursor_bg = '#34c6ff'
  },
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  cursor_blink_rate = 500,
  default_cursor_style = 'BlinkingBlock',
  default_prog = { 'C:/Program Files/Git/bin/bash.exe', '-l' },
  font = wezterm.font({
    family = "FiraCode NF",
    harfbuzz_features = { "liga=1"  }
  }),
  font_size = 13,
  color_scheme = "carbonfox",
  hide_tab_bar_if_only_one_tab = true,
  mouse_bindings = {
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
  },
  window_close_confirmation = "NeverPrompt",
  term = "xterm-256color",
}

