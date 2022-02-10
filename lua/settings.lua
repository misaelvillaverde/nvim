local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.clipboard = "unnamedplus"
o.mouse = "a"
o.termguicolors = true
o.splitbelow = true
o.splitright = true
o.completeopt = "menuone,noinsert,noselect"

-- window-local options
wo.number = true
wo.relativenumber = true
wo.numberwidth = 2
wo.signcolumn = "yes"
wo.cursorcolumn = true
wo.cursorline = true

-- buffer-local options
bo.expandtab = true
bo.shiftwidth = 2
bo.softtabstop = 2
bo.syntax = "on"

-- Require modules configurations
require('lsp-config')
require('treesitter-config')
