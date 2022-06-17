local onedarkpro = require('onedarkpro')

onedarkpro.setup({
		theme = 'onedark_dark',
		plugins = {
			all = false,
		},
		colors = {
			cursorline = '#3A3F4A',
		},
		options = {
			terminal_colors = true,
			cursorline = true
		}
	})

onedarkpro.load()
