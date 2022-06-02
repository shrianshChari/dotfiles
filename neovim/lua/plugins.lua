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

	use {

  	'kyazdani42/nvim-tree.lua',
	}

	-- Color scheme
	use 'navarasu/onedark.nvim'

	-- Auto pairs for '(' '[' '{'
	use 'jiangmiao/auto-pairs'

	-- Lualine statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		}
	}

	-- Discord Rich Presence
	use 'andweeb/presence.nvim'

	-- Rainbow brackets plugin
	use 'luochen1990/rainbow'

	-- Intellisense with LSP
	-- use 'neovim/nvim-lspconfig'

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
	use 'Yggdroot/indentLine'

	-- Minimap for vim
	use 'wfxr/minimap.vim'

	require('onedark').setup {
		style = 'darker'
	}
	require('onedark').load()

end)

-- Call plugin configurations
require('plugin-configs.lualine')
require('plugin-configs.markdown')
require('plugin-configs.minimap')
require('plugin-configs.nvimtree')
require('plugin-configs.presence-nvim')
