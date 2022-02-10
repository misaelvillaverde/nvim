" Start Vim-Plug
call plug#begin('~/.vim/plugged')

" plugins
"" THEMES
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-fugitive'
Plug 'sainnhe/gruvbox-material'
Plug 'lambdalisue/suda.vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'

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
nnoremap <leader>bf <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').builtin()<cr>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list =  ['exact', 'substring', 'fuzzy']

" Fugitive
nmap <leader>gh :diffget //3<cr>
nmap <leader>gu :diffget //2<cr>
nmap <leader>gs :G<cr>
