local null_ls = require("null-ls");
local formatting = null_ls.builtins.formatting;

local sources = {
    null_ls.builtins.formatting.prettier,
}

null_ls.setup({ sources = sources });

