return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local builtin = require("telescope.builtin")

      --Hotkeys
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})  --Find file with name(Ctrl + P)
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) --Find string in filetree(Space + f + g)
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
