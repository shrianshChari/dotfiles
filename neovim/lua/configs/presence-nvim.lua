require('presence'):setup({
	-- Presence will update as file changes
	auto_update = true,

	-- Text that appears when you hover over NVim logo
	neovim_image_text = 'neovim.io',

	-- Main image is the file type
	main_image = 'file',

	-- Don't show the line I'm on
	enable_line_number = false,

	-- Blacklisted files from Discord status
	blacklist = {},

	-- Buttons never even worked
	buttons = false,
})
