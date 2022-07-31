local telescope = require('telescope')

local defaultOptions = {
    hidden = true,
    respect_gitignore = false,
    --theme = "dropdown",
}

telescope.setup {
    extensions = {
        file_browser = defaultOptions,
    },
    pickers = {
        find_files = defaultOptions,
        live_grep = defaultOptions,
    }
}

telescope.load_extension "file_browser"

