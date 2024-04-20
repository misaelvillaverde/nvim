return {
  {
    'morhetz/gruvbox',
    priority = 1000,
    config = function()
      --vim.cmd [[ set background=dark ]]
      --vim.cmd.colorscheme 'gruvbox'
    end,
  },

  {
    'rose-pine/neovim',
    priority = 1000,
    config = function()
      require('rose-pine').setup({
        styles = { italic = false }
      })
      --vim.cmd.colorscheme 'rose-pine'
      --vim.cmd [[ set bg=dark ]]
    end,
  },

  {
    'ayu-theme/ayu-vim',
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme 'ayu'
      --vim.cmd [[ set background=dark ]]
      --vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup({
        commentStyle = {
          italic = false,
        },
        keywordStyle = {
          italic = false,
        },
      })
      --vim.cmd.colorscheme 'kanagawa'
      --vim.cmd [[ set background=dark ]]
      --vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
    end,
  },

  {
    'sainnhe/everforest',
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme 'everforest'
      --vim.cmd [[ set background=dark ]]
      --vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
    end,
  },
}
