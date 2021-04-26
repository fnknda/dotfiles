call plug#begin()

" Language support
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'

" New functionalities
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'neovim/nvim-lspconfig'

" Better motion
Plug 'justinmk/vim-sneak'

" Utils
Plug 'godlygeek/tabular'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'sirver/UltiSnips'
Plug 'tpope/vim-fugitive'

" Improve other commands
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'
Plug 'tpope/vim-repeat'
Plug 'kana/vim-submode'
Plug 'mg979/vim-visual-multi'

" Prettify
Plug 'nvim-lua/completion-nvim'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

" Plugin configs {
set nocompatible
filetype plugin on

let g:rust_recommended_style = 0

let g:deoplete#enable_at_startup = 1

let g:submode_timeoutlen = 500

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeSortHiddenFirst = 1
let NERDTreeSortOrder = ['\/$', '.*', '\.swp$',  '\.bak$', '\~$']

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 2
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

let g:gruvbox_termcolors = 16
let g:gruvbox_invert_signs = 0

syntax enable
set omnifunc=syntaxcomplete#Complete

set termguicolors
colorscheme gruvbox
" }

" Visual stuff and style {
set ts=3
set sw=3
set tw=0
set cindent
set noexpandtab
set smarttab
set autoindent
set relativenumber
set number
set scrolloff=3
set wrap
set noshowmode
set noshowcmd
set shortmess+=F
set cc=81
set laststatus=2
set conceallevel=2

filetype indent on

set listchars=tab:\|·,trail:~,extends:>,precedes:<
set list

let g:netrw_banner=0

augroup python
	autocmd!
	autocmd FileType python setlocal ts=3 sw=3 tw=0 cindent noexpandtab smarttab autoindent wrap
augroup end

" }

" Vim's functionalities on the background {
set nobackup
set nowritebackup
set noswapfile

set hlsearch

set foldmethod=manual

set hidden

set tags=./tags;$HOME
set ignorecase
set path+=**
set wildmenu
set lazyredraw
" }

set encoding=utf-8
set fileencoding=utf-8
autocmd FileType markdown\|html\|tex\|gitcommit set spell
set spelllang=en_us,pt_br

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Add restrictions to vim to force not to use arrow keys on
" Insertion mode
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

" Normal mode and
nnoremap <up> <Nop>
nnoremap <down> <Nop>
nnoremap <left> <Nop>
nnoremap <right> <Nop>

" Visual mode
vnoremap <up> <Nop>
vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>

nmap <C-w><C-k> <C-w>-
nmap <C-w><C-j> <C-w>+
nmap <C-w><C-l> <C-w>>
nmap <C-w><C-h> <C-w><

" Personal custom mapping

nnoremap <SPACE> <Nop>
let mapleader=" "

" File Navigations {
nnoremap <leader><leader> :Startify<CR>
nnoremap <leader>d :NERDTree<CR>
nnoremap <leader>fc :GBranches<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <leader>ft :Tags<CR>
" }

" Git commands {
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>
" }

" Multi-file workflow {
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>th :tabprevious<CR>
nnoremap <leader>tc :tabnew<CR>:Explore<CR>
nnoremap <leader>td :tabclose<CR>

call submode#enter_with('resize', 'n', '', '<C-w><C-h>', '<C-w><')
call submode#enter_with('resize', 'n', '', '<C-w><C-j>', '<C-w>+')
call submode#enter_with('resize', 'n', '', '<C-w><C-k>', '<C-w>-')
call submode#enter_with('resize', 'n', '', '<C-w><C-l>', '<C-w>>')
call submode#leave_with('resize', 'n', '', '<Esc>')
call submode#map('resize', 'n', '', '<C-h>', '<C-w><')
call submode#map('resize', 'n', '', '<C-j>', '<C-w>+')
call submode#map('resize', 'n', '', '<C-k>', '<C-w>-')
call submode#map('resize', 'n', '', '<C-l>', '<C-w>>')
" }

" Miscs {
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :noh<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-e> j<C-e>
nnoremap <C-y> k<C-y>
nnoremap <leader>k <C-a>
nnoremap <leader>j <C-x>
" }

" Multi cursor {
nmap <C-j> <C-Down>
nmap <C-k> <C-Up>
" }

