call plug#begin()

Plug 'tyru/caw.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
" File fuzzy finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
" Static code checker
	Plug 'dense-analysis/ale'
" Run git comments (better) on vim with :G
	Plug 'tpope/vim-fugitive'

Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

Plug 'morhetz/gruvbox'

call plug#end()

set nocompatible
filetype plugin on

let g:rust_recommended_style = 0

let g:gruvbox_termcolors = 16
let g:gruvbox_invert_signs = 0

syntax enable
set omnifunc=syntaxcomplete#Complete

set termguicolors
colorscheme gruvbox

set ts=3
set sw=3
set tw=0
set cindent
set noexpandtab
set smarttab
set autoindent
set relativenumber
set number
set scrolloff=10
set wrap
set noshowmode
set noshowcmd
set shortmess+=F
set cc=80

filetype indent on

set listchars=tab:\|·,trail:~,extends:>,precedes:<
set list

set nobackup
set nowritebackup
set noswapfile

set laststatus=2

set icon

set hlsearch
set incsearch

set foldmethod=manual

set hidden

set ignorecase
set path+=**
set wildmenu
set lazyredraw

set encoding=utf-8
autocmd FileType markdown\|html set spell
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

nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

nmap <C-w><C-k> <C-w>-
nmap <C-w><C-j> <C-w>+
nmap <C-w><C-l> <C-w>>
nmap <C-w><C-h> <C-w><

nmap <C-Up> <C-a>
nmap <C-Down> <C-x>

" Personal custom mapping

nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>c :noh<CR>
nnoremap <leader>h :Startify<CR>

