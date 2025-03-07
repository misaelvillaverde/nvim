vim.hl = vim.highlight

vim.o.hlsearch = false

vim.wo.number = true

vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

vim.wo.relativenumber = true

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
-- vim.o.shiftwidth = 2

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Folding ]]
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Start with all folds open
vim.opt.foldlevel = 99     -- High initial fold level

vim.filetype.add({
  extension = {
    vert = "glsl",
    frag = "glsl",
  },
})
