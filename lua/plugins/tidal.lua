return {
  'tidalcycles/vim-tidal',
  config = function()
    -- Set Tidal to use tmux (default)
    vim.g.tidal_target = 'tmux'

    -- Keybindings for Tidal - all prefixed with <leader>t to avoid conflicts
    vim.keymap.set('n', '<leader>ts', '<Plug>TidalConfig', { desc = '[T]idal [S]tart' })
    vim.keymap.set('n', '<leader>th', '<Plug>TidalHush', { desc = '[T]idal [H]ush all' })
    vim.keymap.set('n', '<leader>te', '<Plug>TidalParagraphSend', { desc = '[T]idal [E]valuate paragraph' })
    vim.keymap.set('v', '<leader>te', '<Plug>TidalRegionSend', { desc = '[T]idal [E]valuate selection' })
    vim.keymap.set('n', '<leader>t1', '<Plug>TidalSend1', { desc = '[T]idal hush d1' })
    vim.keymap.set('n', '<leader>t2', '<Plug>TidalSend2', { desc = '[T]idal hush d2' })
    vim.keymap.set('n', '<leader>t3', '<Plug>TidalSend3', { desc = '[T]idal hush d3' })
    vim.keymap.set('n', '<leader>t4', '<Plug>TidalSend4', { desc = '[T]idal hush d4' })
    vim.keymap.set('n', '<leader>t5', '<Plug>TidalSend5', { desc = '[T]idal hush d5' })
    vim.keymap.set('n', '<leader>t6', '<Plug>TidalSend6', { desc = '[T]idal hush d6' })
    vim.keymap.set('n', '<leader>t7', '<Plug>TidalSend7', { desc = '[T]idal hush d7' })
    vim.keymap.set('n', '<leader>t8', '<Plug>TidalSend8', { desc = '[T]idal hush d8' })
    vim.keymap.set('n', '<leader>t9', '<Plug>TidalSend9', { desc = '[T]idal hush d9' })
  end,
}
