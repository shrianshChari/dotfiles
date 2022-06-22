-- LSP servers that I want to have installed
local servers = {
	"sumneko_lua", -- Lua
	"tsserver", -- TypeScript/JavaScript
	"jsonls", -- JSON
	"bashls", -- Bash/Zsh
	"gopls", -- Go
	"rust-analyzer", -- Rust
}

require('nvim-lsp-installer').setup({
		ensure_installed = servers,
		ui = {
			icons = {
				server_installed = "✓",
				server_pending = "➜",
				server_uninstalled = "✗"
			}
		}
	})

vim.g.coq_settings = {
	auto_start = 'shut-up'
}
