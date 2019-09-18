set exrc
call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin on
filetype plugin indent on
syntax on
colorscheme space-vim-dark

set autoread

set number

nmap <CR> G


set list
set listchars=""
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set smartcase
set incsearch
set ignorecase

set nowrap
set tabstop=8
set autoindent
set backspace=indent,eol,start
set copyindent
set shiftwidth=8
set showmatch
set smarttab

set cinoptions+=(0

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set rtp+=~/.fzf
