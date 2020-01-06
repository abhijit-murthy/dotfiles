set exrc
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'embear/vim-foldsearch'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin on
filetype plugin indent on
syntax on
colorscheme space-vim-dark

set autoread

set number relativenumber

nmap <CR> G


set list
set listchars=""
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set smartcase
set incsearch
set ignorecase

set expandtab
set shiftwidth=4
set tabstop=4
set nowrap
set tabstop=4
set autoindent
set backspace=indent,eol,start
set copyindent
set showmatch
set smarttab

set cinoptions+=(0
let g:foldsearch_highlight = 1
let g:foldsearch_disable_mappings = 1
noremap <leader>fp :Fp \v
noremap <leader>fl zX
noremap <leader>fu zv
noremap <leader>foa zR

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
noremap <leader>h :bprevious<CR>
noremap <leader>l :bnext<CR>

set rtp+=~/.fzf
if filereadable("~/.config/nvim/custom_settings.vim")
    "Put super secret work stuff here
    source /home/ANT.AMAZON.COM/amurthy/.config/nvim/custom_settings.vim
endif
" Fuck you, learn the movement keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
