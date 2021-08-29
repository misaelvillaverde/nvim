" Start Vim-Plug
call plug#begin('~/.vim/plugged')

" plugins
"" THEMES
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'lambdalisue/suda.vim'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" terminate plugins
call plug#end()

"""""""""""
""" Configs
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
