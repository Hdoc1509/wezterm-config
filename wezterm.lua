local wt = require('wezterm')
local act = wt.action
local user_os = wt.target_triple

local shell = {}
local win_shell = 'C:/Program Files/Git/usr/bin/zsh.exe'
local linux_shell = '/usr/bin/zsh'

if user_os == 'x86_64-pc-windows-msvc' then
	shell = { win_shell }
elseif user_os == 'x86_64-unkown-linux-gnu' then
	shell = { linux_shell }
end

table.insert(shell, '-l')

return {
	-- COLORS
	color_scheme = 'carbonfox',
	colors = {
		cursor_bg = '#34c6ff',
		background = '#000000',
		foreground = '#ffffff',
		ansi = {
			'#000000', -- black
			'#fe0100', -- red
			'#00a600', -- green
			'#feff00', -- yellow
			'#0066ff', -- blue
			'#cc00ff', -- magenta
			'#00d5d5', -- cyan
			'#ffffff', -- white
		},
		brights = {
			'#808080', -- bright-black
			'#fe0100', -- bright-red
			'#29cc00', -- bright-green
			'#feff00', -- bright-yellow
			'#0066ff', -- bright-blue
			'#cc00ff', -- bright-magenta
			'#00d5d5', -- bright-cyan
			'#ffffff', -- bright-white
		},
	},
	term = 'xterm-256color',

	-- CURSOR
	cursor_blink_ease_in = 'Constant',
	cursor_blink_ease_out = 'Constant',
	cursor_blink_rate = 500,
	default_cursor_style = 'BlinkingBlock',

	-- FONT
	font = wt.font({
		family = 'FiraCode NF',
		harfbuzz_features = { 'liga=1' },
	}),
	font_size = 12.5,

	-- GUI
	hide_tab_bar_if_only_one_tab = true,
	window_close_confirmation = 'NeverPrompt',
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	-- MOUSE BINDINGS
	mouse_bindings = {
		-- Paste with right click
		{
			event = {
				Up = {
					streak = 1,
					button = 'Right',
				},
			},
			mods = 'NONE',
			action = act.PasteFrom('PrimarySelection'),
		},
	},

	-- KEY BINDINGS
	keys = {
		-- Split horizontally
		{
			key = 'v',
			mods = 'CTRL|SHIFT',
			action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
		},

		-- Split vertically
		{
			key = 's',
			mods = 'CTRL|SHIFT',
			action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
		},

		-- Scroll up 1 line
		{ key = 'UpArrow', mods = 'SHIFT', action = act.ScrollByLine(-1) },

		-- Scroll down 1 line
		{ key = 'DownArrow', mods = 'SHIFT', action = act.ScrollByLine(1) },

		-- Scrool to bottom
		{ key = 'End', mods = 'SHIFT', action = act.ScrollToBottom },

		-- Scrool to top
		{ key = 'Home', mods = 'SHIFT', action = act.ScrollToTop },

		-- Toggle fullscreen
		{ key = 'F11', action = act.ToggleFullScreen },
	},

	-- SHELL
	default_prog = shell,
}
