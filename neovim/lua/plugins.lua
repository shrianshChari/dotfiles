-- Install Packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({
		'git',
		'clone',
		'--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
end

require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Le package manager

	-- File Explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- File icons
		},
	}

	-- Color scheme
	-- use 'navarasu/onedark.nvim'

	use 'olimorris/onedarkpro.nvim'

	-- Auto pairs for '(' '[' '{'
	use 'jiangmiao/auto-pairs'

	-- Lualine statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons', -- File icons
			opt = true
		}
	}

	-- Discord Rich Presence
	use 'andweeb/presence.nvim'

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		-- run = ':TSUpdate'
	}

	-- Intellisense with LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/nvim-lsp-installer' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	-- VSCode-like Pictograms
	use 'onsails/lspkind.nvim'

	-- Better syntax support
	use 'sheerun/vim-polyglot'

	-- kitty.conf highlighting
	use 'fladson/vim-kitty'

	--  Git integration
	use 'shrianshChari/git.nvim'

	-- Shows Git differences in editor
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- Indentation markers for space indentation
	use 'lukas-reineke/indent-blankline.nvim'

	-- Commenting
	use 'b3nj5m1n/kommentary'

	-- Minimap for vim
	-- use 'wfxr/minimap.vim'

	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function()
			require 'alpha'.setup(require 'alpha.themes.startify'.config)
		end
	}

	-- Packer
	use {
		"folke/noice.nvim",
		config = function()
			require("noice").setup()
		end,
		requires = {
			"MunifTanjim/nui.nvim",
		}
	}

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = {
				"markdown"
		} end,
		ft = {
			"markdown"
		},
	})


	-- Color highlighting
	use 'norcalli/nvim-colorizer.lua'

	-- Cheat sheets
	use 'Djancyp/cheat-sheet'
end)

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
