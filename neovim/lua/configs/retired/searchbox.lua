require('searchbox').setup {
	defaults = {
		prompt = '/ ',
		clear_matches = false,
		show_matches = true,
	},
	popup = {
		relative = 'editor',
		position = {
			row = '30%',
			col = '50%',
		},
		size = {
			width = '60%',
		},
	}
}

vim.api.nvim_set_keymap('n', '/',
	"<cmd>lua require('searchbox').match_all({title = ' Match All ', })<CR>",
	{noremap = true})
vim.api.nvim_set_keymap('n', '?',
	"<cmd>lua require('searchbox').match_all({title = ' Reverse Match All ', reverse = true, prompt = '? ', })<CR>",
	{noremap = true})
vim.api.nvim_create_user_command('Chl', 'lua require("searchbox").clear_matches()', {})
