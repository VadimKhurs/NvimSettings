return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {}) --Open file explorer like in VSCode
   
    vim.api.nvim_create_autocmd({"BufWritePost", "BufEnter", "BufFilePost"}, {
      pattern = "*",
      callback = function()
        if package.loaded["neo-tree"] then
          require("neo-tree.sources.manager").refresh("filesystem")
        end
      end,
    })
  end
}
