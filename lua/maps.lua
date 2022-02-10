local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

-- map split configuration
map('n', '<C-J>', '<C-W><C-J>', {})
map('n', '<C-K>', '<C-W><C-K>', {})
map('n', '<C-L>', '<C-W><C-L>', {})
map('n', '<C-H>', '<C-W><C-H>', {})

-- options
nnopt = { noremap = true }
inopt = { inoremap = true }

------------
-- Telescope
tbuilt = "<cmd>lua require('telescope.builtin')." -- don't like this
tfuncs = {
  ff = 'find_files',
  bf = 'file_browser',
  fg = 'live_grep',
  fb = 'buffers',
  fh = 'help_tags',
  gb = 'git_branches',
  fz = 'current_buffer_fuzzy_find',
  fs = 'builtin'
}

for mapping, func in pairs(tfuncs) do
  map('n', '<leader>' .. mapping, tbuilt .. func .. '()<cr>', nnopt)
end
------------
-- vim-fugitive
map('n', '<leader> gs', ':G<cr>', {})

-- TODO: completion-nvim mappings
