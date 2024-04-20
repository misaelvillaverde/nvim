return {
  {
    "ThePrimeagen/harpoon",
    config = function()
      vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = '[H]arpoon [A]dd file' })
      vim.keymap.set('n', '<leader>hr', require('harpoon.mark').rm_file, { desc = '[H]arpoon [R]emove file' })
      vim.keymap.set('n', '<leader>hm', require('harpoon.ui').toggle_quick_menu, { desc = '[H]arpoon toggle [M]enu' })
    end,
  },
}
