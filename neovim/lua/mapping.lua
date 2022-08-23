-- Fixes ability to exit terminal in Neovim
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {})

-- Ctrl C to copy to system clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', {})

-- Ctrl X to cut to system clipboard
vim.api.nvim_set_keymap('v', '<C-x>', '"+d', {})

-- Ctrl S to save files
vim.api.nvim_set_keymap('n', '<C-s>', ':w<cr>', {})
