return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup({
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
      })
      vim.cmd.colorscheme 'gruvbox'
      vim.cmd [[ set bg=dark ]]
    end,
  },
  --
  --   {
  --     'altercation/vim-colors-solarized',
  --     priority = 1000,
  --     config = function()
  --       -- vim.cmd [[ set background=light ]]
  --       -- vim.cmd.colorscheme 'solarized'
  --     end,
  --   },
  --
  --   {
  --     'sainnhe/gruvbox-material',
  --     priority = 1000,
  --     config = function()
  --       -- vim.cmd.colorscheme 'gruvbox-material'
  --       -- vim.cmd [[ set background=light ]]
  --     end,
  --   },
  --
  {
    'rose-pine/neovim',
    priority = 1000,
    config = function()
      require('rose-pine').setup({
        styles = { italic = false }
      })
      -- vim.cmd [[ set bg=dark ]]
      -- vim.cmd.colorscheme 'rose-pine-dawn'
    end,
  },
  --
  --   {
  --     'ayu-theme/ayu-vim',
  --     priority = 1000,
  --     config = function()
  --       --vim.cmd.colorscheme 'ayu'
  --       --vim.cmd [[ set background=dark ]]
  --       --vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
  --     end,
  --   },
  --
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
      -- vim.cmd.colorscheme 'kanagawa'
      -- vim.cmd [[ set background=dark ]]
      --vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
    end,
  },
  --
  --   {
  --     'sainnhe/everforest',
  --     priority = 1000,
  --     config = function()
  --       --vim.cmd.colorscheme 'everforest'
  --       --vim.cmd [[ set background=dark ]]
  --       --vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
  --     end,
  --   },
  --
  --   {
  --     'olivercederborg/poimandres.nvim',
  --     lazy = false,
  --     priority = 1000,
  --     config = function()
  --       require('poimandres').setup {
  --         -- leave this setup function empty for default config
  --         -- or refer to the configuration section
  --         -- for configuration options
  --       }
  --     end,
  --
  --     -- optionally set the colorscheme within lazy config
  --     init = function()
  --       -- vim.cmd.colorscheme 'poimandres'
  --     end
  --   },
  --
  --   {
  --     "gambhirsharma/vesper.nvim",
  --     lazy = false,
  --     priority = 1000,
  --     name = "vesper",
  --     config = function()
  --       -- vim.cmd.colorscheme 'vesper'
  --     end
  --   }
}
