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
local nnopt = { noremap = true, silent = true }
local inopt = { inoremap = true }

------------
-- Telescope
local deftheme = 'ivy'
local tbuilt = "<cmd>lua require('telescope.builtin')." -- don't like this
local tfuncs = {
  ff = { 'find_files', deftheme },
  fg = { 'live_grep', deftheme },
  fb = { 'buffers', deftheme },
  fh = { 'help_tags', deftheme },
  gb = { 'git_branches', deftheme },
  fz = { 'current_buffer_fuzzy_find', deftheme },
  fs = { 'builtin', deftheme }
}

for mapping, func in pairs(tfuncs) do
  map(
    'n',
    '<leader>' .. mapping,
    tbuilt .. func[1] .. '(require("telescope.themes").get_' .. func[2] .. '({}))<cr>',
    nnopt
  )
end

-- file_browser :h telescope-file-browser.nvim
map(
    'n',
    '<leader>bf',
    ':Telescope file_browser<cr>',
    nnopt
)

------------
-- vim-fugitive
map('n', '<leader>gs', ':G<cr>', {})

------------
-- trouble.nvim
map('n', '<leader>xx', ':Trouble<cr>', nnopt)

