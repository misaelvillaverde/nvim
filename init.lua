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
    'pineapplegiant/spaceduck';
    'ayu-theme/ayu-vim';
    'catppuccin/nvim';
    'nvim-lualine/lualine.nvim';
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
    -- diagnostics
    'folke/trouble.nvim';
    'kyazdani42/nvim-web-devicons';
}

require('settings')
require('maps')

vim.o.background='dark'
vim.g.gruvbox_contrast_dark='medium'
vim.g.gruvbox_contrast_light='medium'

-- vim.g.catppuccin_flavour='mocha' -- latte, frappe, macchiato, mocha
vim.cmd [[colorscheme gruvbox]]

-- For background transparency (?)
vim.cmd [[hi Normal ctermbg=NONE guibg=NONE]]

