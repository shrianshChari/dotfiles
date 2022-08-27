local configs = require("nvim-treesitter.configs")

local langs = {
	'typescript',
	'javascript',
	'java',
	'json',
	'json5',
	'jsonc',
	'hjson',
	'html',
	'scss',
	'css',
	'vim',
	'yaml',
	'c',
	'bash',
	'go',
	'rust',
	'latex',
	'lua',
	'python',
	'toml',
	'tsx',
	'toml',
	'markdown',
	'markdown_inline',
	'make',
	'r',
}

configs.setup {
	ensure_installed = langs,
	highlight = {
		enable = true,
		aditional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	},
	rainbow = {
		enable = true,
		disable = {},
		extended_mode = true,
		max_file_lines = nil,
	}
}

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
