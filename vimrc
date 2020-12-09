call plug#begin()

Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'

Plug 'jaredgorski/SpaceCamp'

call plug#end()

set nocompatible
filetype plugin on

let g:solarized_termcolors=256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1

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

set ts=3
set sw=3
set noexpandtab
set relativenumber
set number
set scrolloff=10
set wrap
set noshowmode
set noshowcmd
set shortmess+=F

set smarttab
set autoindent

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

set encoding=utf-8
autocmd FileType markdown\|html set spell
set spelllang=en_us,pt_br

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Add restrictions to vim to force not to use arrow keys
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

nmap <C-Up> <C-a>
nmap <C-Down> <C-x>

