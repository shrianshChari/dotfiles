vim.api.nvim_set_keymap('n', 'n', ':NvimTreeFocus<CR>', { silent = true }) -- Jump to NvimTree
vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeOpen<CR>', { silent = true }) -- Enable NvimTree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true }) -- Toggle NvimTree

local function my_on_attach(bufnr)
	local api = require('nvim-tree.api')

	local function opts(descr)
		return { desc = "nvim-tree: " .. descr, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

	-- custom mapings
	vim.keymap.set('n', 'n', api.tree.open, opts('Open'))
	vim.keymap.set('n', '<C-h>', api.tree.toggle_help, opts('Help'))
	vim.keymap.set('n', '<C-n>', api.tree.close, opts('Close'))

	vim.keymap.set('n', 'v', api.node.open.vertical, opts('Vsplit'))
	vim.keymap.set('n', 'h', api.node.open.horizontal, opts('Hsplit'))

end

require('nvim-tree').setup {
	on_attach = my_on_attach,
	hijack_cursor = true,
	-- create_in_closed_folder = true,
	actions = {
		open_file = {
			window_picker = {
				enable = false,
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
