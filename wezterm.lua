local wezterm = require('wezterm')

return {
	colors = {
		background = '#000',
		cursor_bg = '#34c6ff'
	},
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
	}
}

