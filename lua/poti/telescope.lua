-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`

-- Harpoon addon
local harpoon_add_mark = function(prompt_bufnr)
  local entry = require("telescope.actions.state").get_selected_entry()
  local list = require("harpoon"):list()
  local harpoon_config = list.config
  local item = harpoon_config.create_list_item(harpoon_config, entry[1])
  list:add(item)
  print("[Harpoon] Added " .. entry[1] .. " to harpoon")
end

require('telescope').setup {
  defaults = require('telescope.themes').get_ivy {
    mappings = {
      n = {
        ["<C-h>"] = "which_key",
        ["<c-d>"] = require('telescope.actions').delete_buffer,
        ["<C-r>"] = harpoon_add_mark
      },
      i = {
        ["<C-h>"] = "which_key",
        ["<c-d>"] = require('telescope.actions').delete_buffer,
        ["<C-r>"] = harpoon_add_mark
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
