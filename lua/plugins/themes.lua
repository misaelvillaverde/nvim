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
        contrast = "hard",
      })
      vim.cmd.colorscheme 'gruvbox'
      vim.cmd [[ set bg=dark ]]
    end,
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
        -- vim.g.zenbones_darken_comments = 45
        -- vim.cmd.colorscheme('duckbones')
    end
  },
  {
    'rose-pine/neovim',
    priority = 1000,
    config = function()
      require('rose-pine').setup({
        styles = { italic = false }
      })
      -- vim.cmd [[ set bg=dark ]]
      -- vim.cmd.colorscheme 'rose-pine'
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
