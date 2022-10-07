require('fine-cmdline').setup({
	popup = {
		position = {
			row = '30%',
			col = '50%',
		},
		relative = 'editor',
		border = {
			text = {
				top = ' Command ',
				top_align = 'left',
			},
		}
	}
})

vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
