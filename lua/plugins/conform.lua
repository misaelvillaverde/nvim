local prettierConf = { { "prettierd", "prettier" } }

return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        "<leader>ff",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    -- Everything in opts will be passed to setup()
    opts = {
      formatters_by_ft = {
        javascript = prettierConf,
        javascriptreact = prettierConf,
        typescript = prettierConf,
        typescriptreact = prettierConf,
        json = prettierConf,
        markdown = prettierConf,
        mdx = prettierConf,
      },
      -- format_on_save = { timeout_ms = 500, lsp_fallback = true },
    },
  }
}
