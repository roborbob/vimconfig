set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set termguicolors

call plug#begin('~/.nvim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'gruvbox-community/gruvbox'
Plug 'sbdchd/neoformat'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

let g:vim_jsx_pretty_highlight_close_tag = 1
let g:neoformat_run_all_formatters = 1
let g:gruvbox_transparent_bg = 1
colorscheme gruvbox

let mapleader = " "

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}
EOF

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
