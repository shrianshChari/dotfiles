-- Install Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- File Explorer
	{
		'kyazdani42/nvim-tree.lua',
		dependencies = {
			'kyazdani42/nvim-web-devicons', -- File icons
		},
	},

	-- Color scheme
	--  'navarasu/onedark.nvim'

	{
		'olimorris/onedarkpro.nvim',
	},

	-- Auto pairs for '(' '[' '{'
	'jiangmiao/auto-pairs',

	-- Lualine statusline
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'kyazdani42/nvim-web-devicons', -- File icons
			opt = true
		}
	},

	-- Discord Rich Presence
	'andweeb/presence.nvim',

	-- Treesitter
	{
		'HiPhish/nvim-ts-rainbow2',
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
		},
	},

	{
		-- LSP Support
		{ 'neovim/nvim-lspconfig' },
		{ 'williamboman/mason.nvim' },
		{ 'williamboman/mason-lspconfig.nvim' },

		-- Autocompletion
		{ 'hrsh7th/nvim-cmp' },
		{ 'hrsh7th/cmp-buffer' },
		{ 'hrsh7th/cmp-path' },
		{ 'saadparwaiz1/cmp_luasnip' },
		{ 'hrsh7th/cmp-nvim-lsp' },
		{ 'hrsh7th/cmp-nvim-lua' },

		-- Snippets
		{ 'shrianshChari/friendly-snippets' },
		{
			'L3MON4D3/LuaSnip',
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end
		}
	},

	-- VSCode-like Pictograms
	'onsails/lspkind.nvim',

	-- Better syntax support
	'sheerun/vim-polyglot',

	-- kitty.conf highlighting
	'fladson/vim-kitty',

	--  Git integration
	'shrianshChari/git.nvim',

	-- Shows Git differences in editor
	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	},

	-- Indentation markers for space indentation
	'lukas-reineke/indent-blankline.nvim',

	-- Commenting
	'b3nj5m1n/kommentary',

	-- Minimap for vim
	--  'wfxr/minimap.vim'

	{
		'goolord/alpha-nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons' },
		config = function()
			require 'alpha'.setup(require 'alpha.themes.startify'.config)
		end
	},

	-- Noice
	{
		"folke/noice.nvim",
		config = function()
			require("noice").setup()
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
		}
	},

	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = {
				"markdown"
			}
		end,
		ft = {
			"markdown"
		},
	},


	-- Color highlighting
	'norcalli/nvim-colorizer.lua',

	-- Cheat sheets
	'Djancyp/cheat-sheet',
})

-- Call plugin configurations
require('configs.alpha')
require('configs.onedarkpro')
require('configs.lualine')
require('configs.nvimtree')
require("configs.treesitter")
require('configs.lsp')
require('configs.git')
require('configs.colorizer')
require('configs.autopairs')
require('configs.kommentary')
require('configs.noice-nvim')
require('configs.markdown')
require('configs.presence-nvim')
require('configs.cheatsh')
require('configs.colorizer')
