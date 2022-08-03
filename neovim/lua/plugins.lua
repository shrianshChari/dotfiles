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

	-- Rainbow brackets plugin
	use 'luochen1990/rainbow'

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- Rainbow brackets
	use 'p00f/nvim-ts-rainbow'

	-- Intellisense with LSP
	use {
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
		end
	}
	use {
		"williamboman/nvim-lsp-installer",
		config = function()
			require("nvim-lsp-installer").setup {}
		end
	}

	-- Auto-completion
	use {
		'ms-jpq/coq_nvim',
		branch = 'coq',
	}
	use {
		"ms-jpq/coq.artifacts",
		branch = 'artifacts'
	}

	-- Better syntax support
	use 'sheerun/vim-polyglot'

	-- kitty.conf highlighting
	use 'fladson/vim-kitty'

	-- Fugitive Git integration
	use 'tpope/vim-fugitive'

	-- Shows Git differences in editor
	use {
		'lewis6991/gitsigns.nvim',
		config = function ()
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
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
	}

	-- Color highlighting
	use 'norcalli/nvim-colorizer.lua'

	-- Cheat sheets
	use 'Djancyp/cheat-sheet'
end)

-- Call plugin configurations
-- require('configs.coc')
-- require('configs.onedark')
require('configs.alpha')
require('configs.onedarkpro')
require('configs.lualine')
require('configs.nvimtree')
require("configs.treesitter")
require('configs.lsp')
require('configs.colorizer')
require('configs.autopairs')
require('configs.markdown')
-- require('configs.minimap')
require('configs.presence-nvim')
require('configs.cheatsh')
require('configs.colorizer')
