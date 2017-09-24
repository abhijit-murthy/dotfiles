set exrc
execute pathogen#infect()

syntax on
filetype plugin indent on
colorscheme desert256v2
set background=dark
let g:indent_guides_enable_on_vim_startup=1

set autoread

set laststatus=2
let g:Powerline_stl_path_style = 'filename'
let g:Powerline_colorscheme = 'solarized16'

highlight ColorColumn ctermbg=darkgreen

map <c-x> :%!xxd -g 1
map <c-r> :%!xxd -r

set number

nmap <CR> G

filetype plugin on

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

set colorcolumn=80

set cinoptions+=(0

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set rtp+=~/.fzf
