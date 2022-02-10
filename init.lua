require 'paq' {
  'neovim/nvim-lspconfig';
  'nvim-lua/completion-nvim';
  'nvim-lua/plenary.nvim';
  'nvim-treesitter/nvim-treesitter';
  'nvim-telescope/telescope.nvim';
  'tpope/vim-fugitive';
  'sainnhe/gruvbox-material';
  'lambdalisue/suda.vim';
  'vim-airline/vim-airline';
  'jiangmiao/auto-pairs';
}

require('settings')
require('maps')

vim.cmd('colorscheme gruvbox-material')
