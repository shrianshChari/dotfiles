local g = vim.g

--Presence will update as file changes
g.presence_auto_update = true

--Text that appears when you hover over NVim logo
g.presence_neovim_image_text = 'neovim.io'

--Main image is the file type
g.presence_main_image = 'file'

-- Don't show the line I'm on
g.presence_enable_line_number = false

-- Blacklisted files from Discord status
g.presence_blacklist = {}

-- Buttons never even worked
g.presence_buttons = false
