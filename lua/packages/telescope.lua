local telescope = { }

telescope.telescope = {
    "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" }, config = function()

    require("telescope").setup( {
      pickers = {
	find_files = {
	  theme = "ivy"
	}
      }
    })

    vim.keymap.set("n", "<leader>f", ":Telescope find_files<cr>")
    vim.keymap.set("n", "<leader>g", ":Telescope live_grep<cr>")

  end
}

telescope.browser = { "nvim-telescope/telescope-file-browser.nvim", config = function()
    require("telescope").load_extension("file_browser")
  end
}


return telescope
