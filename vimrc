call plug#begin()

Plug 'haya14busa/incsearch.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

call plug#end()

let g:airline_powerline_fonts = 1

set ts=2 sw=2 noet

set number
set nowrap
set mouse=a
set scrolloff=7

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

colorscheme sierra
