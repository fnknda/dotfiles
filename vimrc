call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'

Plug 'alessandroyorba/sierra'

call plug#end()

set nocompatible
filetype plugin on

let g:solarized_termcolors=256

syntax enable
set background=dark
colorscheme sierra

set ts=3 sw=3 noexpandtab
set number
set scrolloff=10
set wrap
set colorcolumn=80
set noshowmode
set noshowcmd
set shortmess+=F
set relativenumber

set smartindent
set smarttab
set autoindent

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
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

set path+=**
set wildmenu

set spelllang=en_us,pt_br

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" don't skip lines when wrapped
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

