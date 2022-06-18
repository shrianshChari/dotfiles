local onedarkpro = require('onedarkpro')

onedarkpro.setup({
		theme = 'onedark_vivid',
		plugins = {
			all = true,
			nvim_tree = false,
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
