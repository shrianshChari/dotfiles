local function map(mode, shortcut, command, options)
	vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

local function nmap(shortcut, command, options)
  vim.api.nvim_set_keymap('n', shortcut, command, options)
end

local function imap(shortcut, command)
	vim.api.nvim_set_keymap('i', shortcut, command,
	{ noremap = true, silent = true, expr = true })
end

local opt = vim.opt

--TextEdit might fail if hidden is not set.
opt.hidden = true

--Some servers have issues with backup files, see #649.
opt.backup = false
opt.writebackup = false

--Give more space for displaying messages.
opt.cmdheight = 2

--Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
--delays and poor user experience.
opt.updatetime = 300

--Don't pass messages to |ins-completion-menu|.
opt.shortmess = opt.shortmess .. 'c'

--Always show the signcolumn, otherwise it would shift the text each time
opt.signcolumn = 'yes'

function Check_back_space()
  local current_line = vim.fn.getline('.')
  local col = vim.fn.col('.') - 1
  local prev_char = string.char(string.byte(current_line, col))
  return prev_char == ' '
end

--Use tab for trigger completion with characters ahead and navigate.
--NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
--other plugin before putting this into your config.
imap('<tab>', [[
function ()
  if vim.fn.pumvisible() then
    vim.cmd('\\<C-n>')
  else
    if Check_back_space() then
      vim.cmd('\\<TAB>')
    else
      vim.fn['coc#refresh']()
    end
  end
end
  ]])

-- Use <c-space> to trigger completion.
imap('<c-space>', "vim.fn['coc#refresh']()")

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
imap('<cr>', [[
function ()
  if (vim.fn.pumvisible()) then
    vim.fn['coc#_select_confirm']()
  else
    vim.cmd("\\<C-g>u\\<CR>\\<c-r>=coc#on_enter()\\<CR>")
  end
end
  ]])

-- inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      -- \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap('[g', "vim.fn.CocActionAsync('diagnosticPrevious')",
  { silent = true })
nmap(']g', "vim.fn.CocActionAsync('diagnosticNext')",
  { silent = true })

-- GoTo code navigation.
nmap('gd', "vim.fn.CocActionAsync('jumpDefinition')",
  { silent = true })
nmap('gy', "vim.fn.CocActionAsync('jumpTypeDefinition')",
  { silent = true })
nmap('gi', "vim.fn.CocActionAsync('jumpImplementation')",
  { silent = true })
nmap('gr', "vim.fn.CocActionAsync('jumpReferences')",
  { silent = true })

--Use K to show documentation in preview window.
-- nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . --" . expand('<cword>')
  end
end

--Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

-- Symbol renaming.

nmap('<leader>rn', "vim.fn.CocActionAsync('rename')", {})

--Formatting selected code.
map('x', '<leader>f', "vim.fn.CocActionAsync('formatSelected')", {})
nmap('<leader>f', "vim.fn.CocActionAsync('formatSelected')", {})

vim.cmd([[
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
  ]])


-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
vim.cmd([[
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
  ]])
-- Need to figure out what coc-codeaction-selected translates to when running CocAction


--Remap keys for applying codeAction to the current buffer.
nmap('<leader>ac', "vim.fn.CocActionAsync('codeAction')")
--Apply AutoFix to problem on the current line.
nmap('<leader>qf', "vim.fn.CocActionAsync('doQuickfix')")

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
vim.cmd([[
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
  ]])


--Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>--: "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>--: "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

--Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

--Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

--Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

--Add (Neo)Vim's native statusline support.
--NOTE: Please see `:h coc-status` for integrations with external plugins that
--provide custom statusline: lightline.vim, vim-airline.
--set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

-- Mappings for CoCList
-- Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
--Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
--Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
--Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
--Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

--Do default action for next item.
nnoremap <silent><nowait> <space>h  :<C-u>CocNext<CR>
--Do default action for previous item.
nnoremap <silent><nowait> <space>l  :<C-u>CocPrev<CR>
--Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

