local treesitter = { }

treesitter.treesitter = { "nvim-treesitter/nvim-treesitter", config = function()

    require("nvim-treesitter.configs").setup({
      highlight = { enable = true }
    })

  end
}

return treesitter
