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

-- [[ Folding Keymaps ]]
vim.keymap.set('n', 'zR', 'zR', { desc = 'Open all folds' })
vim.keymap.set('n', 'zM', 'zM', { desc = 'Close all folds' })
vim.keymap.set('n', 'zr', 'zr', { desc = 'Reduce fold level' })
vim.keymap.set('n', 'zm', 'zm', { desc = 'Increase fold level' })
vim.keymap.set('n', 'za', 'za', { desc = 'Toggle fold under cursor' })
vim.keymap.set('n', 'zo', 'zo', { desc = 'Open fold under cursor' })
vim.keymap.set('n', 'zc', 'zc', { desc = 'Close fold under cursor' })
vim.keymap.set('n', 'zj', 'zj', { desc = 'Go to next fold' })
vim.keymap.set('n', 'zk', 'zk', { desc = 'Go to previous fold' })

-- Additional useful folding commands
vim.keymap.set('n', '<leader>z', 'za', { desc = 'Toggle fold' })
vim.keymap.set('n', '<leader>Z', function()
  if vim.o.foldlevel == 0 then
    vim.cmd('normal! zR')
  else
    vim.cmd('normal! zM')
  end
end, { desc = 'Toggle all folds' })

-- Zen Reading mode
-- local is_reading = false
-- vim.keymap.set('n', '<leader>zr',
--   function()
--     require('zen-mode').toggle({ window = { width = .40 } })
--     if is_reading then
--       vim.cmd [[
--         set number
--         set relativenumber
--         set signcolumn=yes
--       ]]
--     else
--       vim.cmd [[
--         set nonumber
--         set norelativenumber
--         set signcolumn=no
--       ]]
--     end
--     is_reading = not is_reading
--   end, { desc = 'Toggle Reading Mode' })
