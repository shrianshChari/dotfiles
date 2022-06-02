local function vmap(shortcut, command)
	vim.api.nvim_set_keymap('v', shortcut, command, {})
end

-- Fixes ability to exit terminal in Neovim
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {})

-- Ctrl C to copy to system clipboard
vmap('<C-c>', '"+y')

-- Ctrl X to cut to system clipboard
vmap('<C-x>', '"+d')
