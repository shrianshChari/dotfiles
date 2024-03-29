-- LSP servers that I want to have installed
local servers = {
	"lua_ls", -- Lua
	"tsserver", -- TypeScript/JavaScript
	"jsonls", -- JSON
	"bashls", -- Bash/Zsh
	"gopls", -- Go
	"golangci_lint_ls", -- Also Go
	"rust_analyzer", -- Rust
	"clangd", -- C/C++
	"pyright", -- Python
}

require('mason').setup({
	ui = {
		icons = {
			server_installed = "",
			server_pending = "",
			server_uninstalled = ""
		}
	}
})

local lspkind = require('lspkind')

local lspzero = require('lsp-zero')
lspzero.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = 'local',
	sign_icons = {
		error = '',
		warn = '󰔶',
		hint = '󰉀',
		info = ''
	}
})
lspzero.ensure_installed(servers)
lspzero.setup_nvim_cmp({
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			maxwidth = 50,
		})
	}
})
lspzero.setup()
