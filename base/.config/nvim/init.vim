call plug#begin()

Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'sirver/UltiSnips'
Plug 'preservim/tagbar'
" File fuzzy finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'stsewd/fzf-checkout.vim'
" Static code checker
	Plug 'dense-analysis/ale'
" Run git comments (better) on vim with :G
	Plug 'tpope/vim-fugitive'

Plug 'yuttie/comfortable-motion.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'

Plug 'morhetz/gruvbox'

call plug#end()

" Plugin configs {
set nocompatible
filetype plugin on

let g:rust_recommended_style = 0

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

filetype indent on

set listchars=tab:\|·,trail:~,extends:>,precedes:<
set list

let g:netrw_banner=0
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
autocmd FileType markdown\|html\|tex set spell
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

nmap <C-Up> <C-a>
nmap <C-Down> <C-x>

" Personal custom mapping

nnoremap <SPACE> <Nop>
let mapleader=" "

" File Navigations {
nnoremap <leader><leader> :Startify<CR>
nnoremap <leader>d :Vex<CR>:vert resize 20<CR>
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
" }

" Miscs {
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>x :noh<CR>
nnoremap <F8> :TagbarToggle<CR>
" }

" Movement {
nnoremap <C-k> k<C-y>
nnoremap <C-j> j<C-e>
" }

