" some very basic config in case I accidentaly use vim instead of neovim 

syntax on
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set incsearch

set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox

set background=dark
