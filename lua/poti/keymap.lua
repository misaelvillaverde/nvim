-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Zen Reading mode
local is_reading = false
vim.keymap.set('n', '<leader>r',
  function()
    require('zen-mode').toggle({ window = { width = .40 } })
    if is_reading then
      vim.cmd [[
        set number
        set relativenumber
        set signcolumn=yes
      ]]
    else
      vim.cmd [[
        set nonumber
        set norelativenumber
        set signcolumn=no
      ]]
    end
    is_reading = not is_reading
  end, { desc = 'Toggle Reading Mode' })
