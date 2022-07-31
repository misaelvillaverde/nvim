local o = vim.o

-- Require modules configurations
require('telescope-config')
require('cmp-config')
require('treesitter-config')
require('lsp-config')
require('null-ls-config')

-- OS theme listener for vim
-- require('dark_notify').run()

-- global options
o.clipboard = "unnamedplus"
o.mouse = "a"
o.termguicolors = true
o.splitbelow = true
o.splitright = true
o.completeopt = "menu,menuone,noselect"
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.syntax = "on"
o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.cursorline = true

