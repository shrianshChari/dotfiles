-- LSP servers that I want to have installed
local servers = { "sumneko_lua", "tsserver", "jsonls", "bashls" }

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
