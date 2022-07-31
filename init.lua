require 'paq' {
    'neovim/nvim-lspconfig';
    'nvim-lua/plenary.nvim';
    'nvim-treesitter/nvim-treesitter';
    'nvim-telescope/telescope.nvim';
    'nvim-telescope/telescope-file-browser.nvim';
    'jose-elias-alvarez/null-ls.nvim';
    'lambdalisue/suda.vim';
    'tpope/vim-surround';
    'jiangmiao/auto-pairs';
    -- themes
    'sainnhe/gruvbox-material';
    'morhetz/gruvbox';
    'vim-airline/vim-airline';
    'cormacrelf/dark-notify';
    -- cmp
    'hrsh7th/cmp-nvim-lsp';
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-path';
    'hrsh7th/cmp-cmdline';
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-vsnip';
    'hrsh7th/vim-vsnip';
    -- git
    'tpope/vim-fugitive';
}

require('settings')
require('maps')

vim.cmd('colorscheme gruvbox')
vim.cmd('hi Normal ctermbg=NONE guibg=NONE')

