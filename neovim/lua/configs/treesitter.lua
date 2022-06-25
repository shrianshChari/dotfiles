local configs = require("nvim-treesitter.configs")

configs.setup {
	ensure_installed = "all",
	highlight = {
		enable = true,
		aditional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
}

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
