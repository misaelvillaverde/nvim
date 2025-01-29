return {
  {
    'echasnovski/mini.files',
    version = '*',
    config = function()
      require('mini.files').setup()
      vim.keymap.set('n', '<leader>fm', '<cmd>lua MiniFiles.open()<cr>')
    end
  },
}
