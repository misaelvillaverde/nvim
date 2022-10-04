local telescope = require('telescope')

telescope.setup {
    defaults = {
        hidden = true,
        respect_gitignore = false
    }
}

telescope.load_extension "file_browser"

