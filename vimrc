call plug#begin()

Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
" Static code checker
	Plug 'scrooloose/syntastic'
" Run git comments (better) on vim with :G
	Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'

Plug 'morhetz/gruvbox'

call plug#end()

set nocompatible
filetype plugin on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1
let g:syntastic_loc_list_height=5

let g:rust_recommended_style = 0

let g:gruvbox_termcolors = 16
let g:gruvbox_invert_signs = 0

syntax enable
set omnifunc=syntaxcomplete#Complete
set background=dark

set termguicolors
colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi Directory guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi SpecialKey guibg=NONE ctermbg=NONE

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

set encoding=utf-8
autocmd FileType markdown\|html set spell
set spelllang=en_us,pt_br

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set mouse=a

" Add restrictions to vim to force not to use arrow keys
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

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

