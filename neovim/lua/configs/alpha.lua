--[[
	Note: Make sure that you call :PackerSync if you modify the button
	layout/whatever with this file! Otherwise alpha may not pick up the
	changes!
--]]

local alpha = require('alpha')
local startify = require('alpha.themes.startify')

-- Set header
local myname = {
	"         __         _                  __    ________               _ ",
	"   _____/ /_  _____(_)___ _____  _____/ /_  / ____/ /_  ____ ______(_)",
	"  / ___/ __ \\/ ___/ / __ `/ __ \\/ ___/ __ \\/ /   / __ \\/ __ `/ ___/ / ",
	" (__  ) / / / /  / / /_/ / / / (__  ) / / / /___/ / / / /_/ / /  / /  ",
	"/____/_/ /_/_/  /_/\\__,_/_/ /_/____/_/ /_/\\____/_/ /_/\\__,_/_/  /_/   ",
}

local shine = {
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡈⢤⣚⣭⣾⣿⣿⣮⣝⢪⡄⢈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⢀⡈⢤⣚⣭⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣝⢪⡄⢈⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⢀⡈⢤⣚⣭⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣝⢪⡄⢈⠀⠀⠀⠀⠀",
	"⢀⡈⢤⣚⣭⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣝⢪⡄⢈⠀",
	"⣭⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⠍",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢷⡛⠥⠂⠢⡕⢻⡷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢷⡛⠥⠒⠁⠀⠀⠀⠀⠀⠀⠑⠢⡕⢻⡷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⠯⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠮⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⡋⢄⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡄⢫⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣞⢭⡊⢄⠈⠀⠀⠀⠀⢈⡄⢪⣝⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣞⢭⢊⢪⣝⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏",
	"⢵⡻⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⢻⠅",
	"⠀⠐⠡⡒⢵⡻⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⢻⡕⠢⠑⠀⠀",
	"⠀⠀⠀⠀⠀⠐⠡⡒⢵⡻⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⢻⡕⠢⠑⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠡⡒⢵⡻⣷⣿⣿⣿⣿⣿⣿⣿⣿⡷⢻⡕⠢⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠡⡒⠵⡳⡷⡷⠳⡕⠢⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}

startify.section.header.val = myname

-- Send config to alpha
alpha.setup(startify.opts)
