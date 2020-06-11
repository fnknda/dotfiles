call plug#begin()

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'

Plug 'alessandroyorba/sierra'

call plug#end()

filetype plugin on

let g:solarized_termcolors=256
let g:loaded_matchit = 1

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

let g:loaded_matchparen=1
set noshowmatch
set foldmethod=manual

set hidden
set history=100

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" don't skip lines when wrapped
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

