local editor = {}

editor.comments = { "numToStr/Comment.nvim", config = function()
    require("Comment").setup()
  end
}

return editor
