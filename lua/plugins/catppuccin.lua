return {
  { 
    "catppuccin/nvim",
    lazy = false,
    name = "catpipuccin", 
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  },
    
}
