vim.api.nvim_set_keymap('n', 'n', ':NvimTreeFocus<CR>', { silent = true }) -- Jump to NvimTree
vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeOpen<CR>', { silent = true }) -- Enable NvimTree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true }) -- Toggle NvimTree

require('nvim-tree').setup {
	hijack_cursor = true,
	-- create_in_closed_folder = true,
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	view = {
		mappings = {
			list = {
				{ key = { "<C-]>", "+" }, action = "cd", mode = "n" },
				{ key = { "<C-v>", "v" }, action = "vsplit", mode = "n" },
				{ key = { "<C-x>", "h" }, action = "split", mode = "n" },
			},
		},
	},
	renderer = {
		add_trailing = true,
		icons = {
			git_placement = "after",
		}
	},
	filters = {
		dotfiles = true, -- You can still press "H" to toggle dotfiles
	}
}
