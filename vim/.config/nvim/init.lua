local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug 'embear/vim-foldsearch'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'norcalli/nvim-terminal.lua'
Plug 'tpope/vim-sleuth'
-- Installs LSP servers
Plug 'williamboman/mason.nvim'
-- Configures LSP client
Plug 'neovim/nvim-lspconfig'
-- Autocomplete implementation
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
-- Snippet Engine
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
-- LSP status bar
Plug 'arkav/lualine-lsp-progress'
-- Status Line
Plug 'nvim-lualine/lualine.nvim'
-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.5' })

vim.call('plug#end')

vim.cmd([[
filetype plugin on
filetype plugin indent on
syntax on
colorscheme gruvbox

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

]])

vim.api.nvim_set_keymap('', '<Up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Right>', '<Nop>', { noremap = true })

vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '{<CR>', '{<CR>}<Esc>O', {noremap = true})


-- Foldsearch keybindings
vim.api.nvim_set_keymap('', '<leader>fp', ':Fp', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>fl', 'zX', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>fu', 'zv', {noremap = true})
vim.api.nvim_set_keymap('', '<leader>foa', 'zR', {noremap = true})

require('nvim-terminal')
require('lsp')
require('statusline')
require('telescope-bindings')
