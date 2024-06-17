-- LSP servers that I want to have installed
local servers = {
	"lua_ls",          -- Lua
	"tsserver",        -- TypeScript/JavaScript
	"jsonls",          -- JSON
	"bashls",          -- Bash/Zsh
	"gopls",           -- Go
	"golangci_lint_ls", -- Also Go
	"rust_analyzer",   -- Rust
	"clangd",          -- C/C++
	"pyright",         -- Python
}

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function(event)
		local opts = { buffer = event.buf }

		-- these will be buffer-local keybindings
		-- because they only work if you have an active language server

		vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
		vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
		vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
		vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
		vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
		vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
		vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
		vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
		vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
		vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
	end
})

require('mason').setup({
	ui = {
		icons = {
			server_installed = "",
			server_pending = "",
			server_uninstalled = ""
		}
	}
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
	require('lspconfig')[server].setup({
		capabilities = lsp_capabilities,
	})
end

require('mason-lspconfig').setup {
	ensure_installed = servers,
	handlers = {
		default_setup,
		lua_ls = function()
			require('lspconfig').lua_ls.setup({
				capabilities = lsp_capabilities,
				settings = {
					Lua = {
						runtime = {
							version = 'LuaJIT'
						},
						diagnostics = {
							globals = { 'vim' },
						},
						workspace = {
							library = {
								vim.env.VIMRUNTIME
							}
						}
					}
				}
			})
		end
	}
}

local lspkind = require('lspkind')
local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
	},
	mapping = cmp.mapping.preset.insert({
		-- Enter key confirms completion item
		['<CR>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				if luasnip.expandable() then
					luasnip.expand()
				else
					cmp.confirm({
						select = true,
					})
				end
			else
				fallback()
			end
		end),

		-- Ctrl + space triggers completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.locally_jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { 'i', 's' }),

		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { 'i', 's' }),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			maxwidth = 50,
		})
	}
})

vim.fn.sign_define(
	'DiagnosticSignError',
	{ texthl = 'DiagnosticSignError', text = '', numhl = 'DiagnosticSignError' }
)

vim.fn.sign_define(
	'DiagnosticSignWarn',
	{ texthl = 'DiagnosticSignWarn', text = '󰔶', numhl = 'DiagnosticSignWarn' }
)

vim.fn.sign_define(
	'DiagnosticSignHint',
	{ texthl = 'DiagnosticSignHint', text = '󰉀', numhl = 'DiagnosticSignHint' }
)

vim.fn.sign_define(
	'DiagnosticSignInfo',
	{ texthl = 'DiagnosticSignInfo', text = '', numhl = 'DiagnosticSignInfo' }
)
