-- LSP servers that I want to have installed
local servers = {
	"sumneko_lua", -- Lua
	"tsserver", -- TypeScript/JavaScript
	"jsonls", -- JSON
	"bashls", -- Bash/Zsh
	"gopls", -- Go
	"golangci_lint_ls", -- Also Go
	"rust_analyzer", -- Rust
	"clangd", -- C/C++
}

require('nvim-lsp-installer').setup({
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
})

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed(servers)
lsp.setup()
