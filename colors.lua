local M = {}

M.color_scheme = 'carbonfox'
M.colors = {
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
}

M.term = 'xterm-256color'

return M
