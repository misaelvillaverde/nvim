vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('poti.lazy')
require('poti.conf')
require('poti.keymap')
require('poti.telescope')
require('poti.treesitter')
require('poti.lsp')
require('poti.cmp')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
