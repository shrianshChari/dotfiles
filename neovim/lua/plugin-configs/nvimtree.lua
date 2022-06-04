local function nmap(shortcut, command, options)
	vim.api.nvim_set_keymap('n', shortcut, command, options)
end

nmap('n', ':NvimTreeFocus<CR>', {}) -- Jump to NvimTree
nmap('<C-t>', ':NvimTreeOpen<CR>', {}) -- Enable NvimTree
nmap('<C-n>', ':NvimTreeToggle<CR>', {}) -- Toggle NvimTree

require('nvim-tree').setup {
		hijack_cursor = true,
		create_in_closed_folder = true,
	}