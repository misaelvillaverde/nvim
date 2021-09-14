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
Plug 'shaunsingh/moonlight.nvim'

" terminate plugins
call plug#end()

"""""""""""
""" Configs
" Find files using Telescope lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
