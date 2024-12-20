vim.api.nvim_set_keymap('n', '<Space>', '', {noremap = true})

require('configs')
require('maps')
require('plugin_configs')
require('lsp')

vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
]])

vim.cmd([[
" Set spell for text and markdown files
autocmd FileType markdown\|html\|tex\|gitcommit set spell

" Disable ftplugin for zig
autocmd FileType zig set spell

" start at last place you were editing
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exec "normal! g'\"" | endif

" Highlight copied text on yank
augroup LuaHighlight
	autocmd!
	autocmd TextYankPost * silent! lua require('vim.highlight').on_yank()
augroup end
]])
