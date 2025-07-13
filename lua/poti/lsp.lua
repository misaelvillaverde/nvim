local servers = {
  clangd = {
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
  },

  gopls = {
    settings = {
      gopls = {
        hints = {
          parameterNames = true,
          rangeVariableTypes = true,
        },
      }
    }
  },
  -- pyright = {},
  rust_analyzer = {},

  ts_ls = {
    init_options = {
      preferences = {
        includeInlayParameterNameHints = 'all',
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
        importModuleSpecifierPreference = 'non-relative',
      },
    },
  },

  lua_ls = {
    settings = {
      Lua = {
        workspace = { checkThirdParty = false },
        telemetry = { enable = false },
        hint = { enable = true },
      }
    },
  },

  tailwindcss = {
    filetypes = {
      'templ',
      'html',
      'tsx',
      'jsx',
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
      'css',
      'rs',
    },
    init_options = {
      userLanguages = {
        templ = "html"
      },
    },
  },

  templ = {},

  pylsp = {},
}

-- Ensure the servers above are installed
require("mason").setup()

require("mason-lspconfig").setup {
  ensure_installed = vim.tbl_keys(servers),
}

local lspconfig = require("lspconfig")

-- external (non-mason)
lspconfig.gleam.setup {
  cmd = { "glas", "--stdio" }
}

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local on_attach = function(args)
  local bufnr = args.buf
  -- local client = vim.lsp.get_client_by_id(args.data.client_id)

  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- Lesser used LSP functionality
  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')

  -- Inlay hints
  -- vim.lsp.inlay_hint.enable(true)
  nmap('<leader>ih', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, "[I]nlay [H]int")

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end

for server_name, config in pairs(servers) do
  local server_config = vim.tbl_deep_extend('force', {
    capabilities = capabilities,
  }, config)

  vim.lsp.config(server_name, server_config)
end

-- Then use LspAttach for keymaps
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = on_attach
})
