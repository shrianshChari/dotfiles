local function nmap(shortcut, command, options)
	vim.api.nvim_set_keymap('n', shortcut, command, options)
end

nmap('n', ':NvimTreeFocus<CR>', {}) -- Jump to NvimTree
nmap('<C-t>', ':NvimTreeOpen<CR>', {}) -- Enable NvimTree
nmap('<C-n>', ':NvimTreeToggle<CR>', {}) -- Toggle NvimTree

require('nvim-tree').setup {
	hijack_cursor = true,
	create_in_closed_folder = true,
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
