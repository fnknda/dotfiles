nnoremap <SPACE> <Nop>
let mapleader=" "

call plug#begin()

" New functionalities
Plug 'folke/lsp-trouble.nvim'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'kristijanhusak/orgmode.nvim'
Plug 'mhinz/vim-startify'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'sbdchd/neoformat'

" Better motion
Plug 'justinmk/vim-sneak'

" Utils
Plug 'godlygeek/tabular'
Plug 'nvim-lua/completion-nvim'
Plug 'preservim/nerdcommenter'
Plug 'sirver/UltiSnips'
Plug 'tpope/vim-surround'

" Improve other commands
Plug 'kana/vim-submode'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-repeat'

" Prettify
Plug 'airblade/vim-gitgutter'
Plug 'andweeb/presence.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-fugitive'
Plug 'yuttie/comfortable-motion.vim'

call plug#end()

lua require('plugin_configs')
lua require('lsp_configs')
lua require('configs')
lua require('maps')

hi Normal guibg=NONE ctermbg=NONE

autocmd FileType markdown\|html\|tex\|gitcommit set spell

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Highlight yanks
augroup LuaHighlight
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

" Submodes and their keybinds

" Resize windows
call submode#enter_with('resize', 'n', '', '<C-w><C-h>', '<C-w><')
call submode#enter_with('resize', 'n', '', '<C-w><C-j>', '<C-w>+')
call submode#enter_with('resize', 'n', '', '<C-w><C-k>', '<C-w>-')
call submode#enter_with('resize', 'n', '', '<C-w><C-l>', '<C-w>>')
call submode#leave_with('resize', 'n', '', '<Esc>')
call submode#map('resize', 'n', '', '<C-h>', '<C-w><')
call submode#map('resize', 'n', '', '<C-j>', '<C-w>+')
call submode#map('resize', 'n', '', '<C-k>', '<C-w>-')
call submode#map('resize', 'n', '', '<C-l>', '<C-w>>')

" Move In-Between Windows
call submode#enter_with('mibw', 'n', '', '<C-w>h', '<C-w>h')
call submode#enter_with('mibw', 'n', '', '<C-w>j', '<C-w>j')
call submode#enter_with('mibw', 'n', '', '<C-w>k', '<C-w>k')
call submode#enter_with('mibw', 'n', '', '<C-w>l', '<C-w>l')
call submode#leave_with('mibw', 'n', '', '<Esc>')
call submode#map('mibw', 'n', '', 'h', '<C-w>h')
call submode#map('mibw', 'n', '', 'j', '<C-w>j')
call submode#map('mibw', 'n', '', 'k', '<C-w>k')
call submode#map('mibw', 'n', '', 'l', '<C-w>l')
