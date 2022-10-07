local opt = vim.opt

opt.showmatch = true -- Briefly jumps to matching bracket

opt.mouse = 'a' -- Can click around w/ mouse

opt.tabstop = 2 -- # of spaces that a tab is
opt.shiftwidth = 2 -- # of spaces for each step of autoindent

opt.autoindent = true -- Take indentation from prev line in new line

opt.number = true -- Line numbers

opt.hlsearch = true -- Highlights all matches when searching

opt.showmode = false -- Don't need to show mode bc statusline

opt.laststatus = 3 -- Always show statusline, but for current window

opt.expandtab = false -- Don't insert spaces when you press tab

opt.list = true -- Display tab characters

opt.colorcolumn = '81' -- Reveals 81st column so that you don't go past it

opt.ch = 0 -- Hide the command line by default so it only is seen when you run a command

vim.cmd('syntax enable') -- Enable syntax highlighting
