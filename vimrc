call plug#begin(stdpath('data') . '/plugged')

Plug 'haya14busa/incsearch.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

call plug#end()

let g:airline_powerline_fonts = 1

set ts=4 sw=4 noet

set number
set nowrap
set mouse=a

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

colorscheme sierra
