local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/dotfiles/vim/plugged')
Plug 'embear/vim-foldsearch'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'norcalli/nvim-terminal.lua'
vim.call('plug#end')

vim.cmd([[
filetype plugin on
filetype plugin indent on
syntax on
colorscheme space-vim-dark

set autoread

set number relativenumber

set list
set listchars=""
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set smartcase
set incsearch
set ignorecase

set expandtab
set nowrap
set autoindent
set backspace=indent,eol,start
set copyindent
set showmatch
set smarttab

set cinoptions+=(0
let g:foldsearch_highlight = 1
let g:foldsearch_disable_mappings = 1

set rtp+=~/.fzf

set mouse=a

let NERDTreeShowBookmarks = 1

let g:coc_global_extensions = [ 'coc-clangd', 'coc-rls' ]
]])

vim.api.nvim_set_keymap('', '<Up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Right>', '<Nop>', { noremap = true })

vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', {noremap = true})


-- NERDTree mappings
vim.api.nvim_set_keymap('', '<leader>f', ':NERDTreeToggle<CR>', {noremap = true})

-- Foldsearch keybindings
vim.api.nvim_set_keymap('', '<leader>fp', ':Fp \v', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>fl', 'zX', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>fu', 'zv', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>foa', 'zR', {noremap = true})

require('nvim-terminal')
require('coc')
