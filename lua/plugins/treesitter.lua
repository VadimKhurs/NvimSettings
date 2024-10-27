return {
  'nvim-treesitter/nvim-treesitter', 
  build =  ':TSUpdate',

  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({  
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    }) 

    -- Specific change for Rust comments
    vim.api.nvim_set_hl(0, "@comment.rust", { fg = "#689760", italic = true }) -- Example color

  end
}

