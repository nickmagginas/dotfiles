local colorschemes = { }

colorschemes.rose_pine = { "rose-pine/neovim", config = function()
    vim.g.rose_pine_disable_italics = true
  end
}

colorschemes.material = { "marko-cerovac/material.nvim" }

colorschemes.one_nord = { "rmehri01/onenord.nvim" }

colorschemes.catppuccin = { "catppuccin/nvim", as = "catppuccin", config = function()
    require("catppuccin").setup()
  end
}

colorschemes.kanagawa = { "rebelot/kanagawa.nvim" }

return colorschemes
