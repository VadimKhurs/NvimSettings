return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
        size = 10,
        open_mapping = [[<leader>tr]],
        shading_factor = 2,
        direction = "horizontal",
        float_opts = {
            border = "curved",
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
    }) 

  end,
}
