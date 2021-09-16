set number
set relativenumber
syntax on

set numberwidth=2

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smarttab

set clipboard=unnamedplus
set mouse=a
set signcolumn=yes

" Split configuration
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Load modules
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/lsp-config.vim

" ===Colorscheme Config===
set termguicolors
colorscheme gruvbox-material

