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
	'markdown',
	'markdown_inline',
	'make',
	'r',
	'vimdoc',
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
	autotag = {
		enable = true,
	}
}

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
