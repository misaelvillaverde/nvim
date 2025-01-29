return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      -- telescope
      local conf = require("telescope.config").values

      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        }):find()
      end

      local Path = require("plenary.path")
      local function normalize_path(buf_name, root)
        return Path:new(buf_name):make_relative(root)
      end

      local function add_visible_buffers()
        local windows = vim.api.nvim_list_wins()
        for _, win in ipairs(windows) do
          local buf = vim.api.nvim_win_get_buf(win)
          local file_path = vim.api.nvim_buf_get_name(buf)
          if file_path ~= "" then -- Only add named buffers
            local file_name = normalize_path(file_path, harpoon.config.default.get_root_dir())
            local item = harpoon.config.default.create_list_item(harpoon.config.default, file_name)
            harpoon:list():add(item)
          end
        end
        -- Optional: Show a notification
        vim.notify("Added visible buffers to Harpoon", vim.log.levels.INFO)
      end

      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
      vim.keymap.set("n", "<leader>m", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      -- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
      vim.keymap.set("n", "<leader>va", add_visible_buffers)

      vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    end,
  },
}
