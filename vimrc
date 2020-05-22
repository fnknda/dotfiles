call plug#begin()

Plug 'haya14busa/incsearch.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

call plug#end()

let g:airline_powerline_fonts = 1

colorscheme sierra

syntax enable
filetype plugin on

set ts=3 sw=3 noexpandtab
set number
set scrolloff=7
set textwidth=80
set linebreak

set smartindent
set smarttab
set autoindent

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

set nobackup
set nowritebackup
set noswapfile

set laststatus=0

set icon

set hlsearch
set incsearch

set viminfo='20,<1000,s1000
"set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
"            | |    |   |   |    | |  + viminfo file path
"            | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"            | |    |   |   |    + disable 'hlsearch' loading viminfo
"            | |    |   |   + command-line history saved
"            | |    |   + search history saved
"            | |    + files marks saved
"            | + lines saved each register (old name for <, vi6.2)
"            + save/restore buffer list

let g:loaded_matchparen=1
set noshowmatch
set foldmethod=manual

set hidden
set history=100

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

