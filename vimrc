call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'

Plug 'jaredgorski/SpaceCamp'

call plug#end()

set nocompatible
filetype plugin on

let g:solarized_termcolors=256

syntax enable
set omnifunc=syntaxcomplete#Complete
set background=dark

set termguicolors
colorscheme spacecamp

hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi Directory guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi SpecialKey guibg=NONE ctermbg=NONE

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

autocmd FileType markdown set spell
set spelllang=en_us,pt_br

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" don't skip lines when wrapped
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Add rsetrictions to vim to train it
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

nmap <C-Up> <C-a>
nmap <C-Down> <C-x>

