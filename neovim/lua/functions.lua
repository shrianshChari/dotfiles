--[[
Defines the following window structure
______________________________
|      |                      |
|  N   |                      |
|  E   |       editor 1       |
|  R   |                      |
|  D   |                      |
|  T   |----------------------|
|  r   |          |     t     |
|  e   |  editor  |     e     |
|  e   |    2     |     r     |
|      |          |     m     |
-------------------------------
Remember that ctrl w + hjkl helps you navigate between windows
Call functions with :call HMain()
--]]
function HMain()
	-- local fn = vim.fn

	vim.cmd([[
	NvimTreeFocus
  wincmd l
  sp
  wincmd j
  vsp
  wincmd l
  term
  wincmd k
	]])

	--[[
	fn.NvimTreeFocus()
	fn.wincmd('l')
	fn.sp()
	fn.wincmd('j')
	fn.vsp()
	fn.wincmd('l')
	fn.term()
	fn.wincmd('k')
	--]]
end

--[[
Defines the following window structure
______________________________
|      |          |           |
|  N   |          |   editor  |
|  E   |          |     2     |
|  R   |  editor  |           |
|  D   |    1     |           |
|  T   |          |-----------|
|  r   |          |     t     |
|  e   |          |     e     |
|  e   |          |     r     |
|      |          |     m     |
-------------------------------
Remember that ctrl w + hjkl helps you navigate between windows
Call functions with :call VMain()
--]]
function VMain()
	-- local fn = vim.fn

	vim.cmd([[
	NvimTreeFocus
  wincmd l
  vsp
  wincmd l
  sp
  wincmd j
  term
  wincmd h
	]])

	--[[
	fn.NvimTreeFocus()
	fn.wincmd('l')
	fn.vsp()
	fn.wincmd('l')
	fn.sp()
	fn.wincmd('j')
	fn.term()
	fn.wincmd('h')
	--]]
end

--[[

Defines the following window structure
___________________
|      |           |
|  N   |   editor  |
|  E   |     2     |
|  R   |           |
|  D   |           |
|  T   |-----------|
|  r   |     t     |
|  e   |     e     |
|  e   |     r     |
|      |     m     |
--------------------
Remember that ctrl w + hjkl helps you navigate between windows
Call functions with :call MainHalf()
--]]
function MainHalf()
	-- local fn = vim.fn

	vim.cmd([[
	NvimTreeFocus
  wincmd l
  sp
  wincmd j
  term
  wincmd h
	]])

	--[[
	fn.NvimTreeFocus()
	fn.wincmd('l')
	fn.sp()
	fn.wincmd('j')
	fn.term()
	fn.wincmd('h')
	--]]
end

