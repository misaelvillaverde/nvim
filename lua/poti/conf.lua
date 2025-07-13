vim.hl = vim.highlight

vim.o.hlsearch = false

vim.wo.number = true

vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

vim.wo.relativenumber = true

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
-- vim.o.shiftwidth = 2

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Folding ]]
vim.opt.foldenable = false -- Start with all folds open
vim.opt.foldlevel = 99     -- High initial fold level
vim.opt.foldlevelstart = 99 -- Start editing with all folds open

-- Dynamic folding setup based on available features
local function setup_folding()
  local bufnr = vim.api.nvim_get_current_buf()
  
  -- Check if any LSP client supports folding
  local clients = vim.lsp.get_clients({ bufnr = bufnr })
  local has_lsp_folding = false
  
  for _, client in ipairs(clients) do
    if client.server_capabilities.foldingRangeProvider then
      has_lsp_folding = true
      break
    end
  end
  
  if has_lsp_folding then
    -- Use LSP folding
    vim.opt_local.foldmethod = "expr"
    vim.opt_local.foldexpr = "v:lua.vim.lsp.foldexpr()"
  elseif require("nvim-treesitter.parsers").has_parser() then
    -- Use treesitter folding
    vim.opt_local.foldmethod = "expr"
    vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
  else
    -- Fallback to syntax folding
    vim.opt_local.foldmethod = "syntax"
  end
end

-- Set up folding on file type change
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = vim.api.nvim_create_augroup("DynamicFolding", { clear = true }),
  callback = setup_folding,
})

-- Re-setup folding when LSP attaches (for better LSP folding detection)
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("DynamicFoldingLSP", { clear = true }),
  callback = function()
    vim.defer_fn(setup_folding, 100) -- Small delay to ensure LSP capabilities are ready
  end,
})

vim.filetype.add({
  extension = {
    vert = "glsl",
    frag = "glsl",
  },
})
