local build = {}

build.yabs = { "pianocomposer321/yabs.nvim", config = function()
  end
}

yabs = require("yabs")

yabs:setup({
  languages = {
    python = {
      default_task = "run",
      tasks = {
	run = {
	  command = function()
	    _, venv = require("packages/python_utils").get_python_venv_for_file()

	    return (venv and "conda activate " .. venv .. "; python %") or "python %"
	  end,
	  type = "shell",
	  output = "terminal"
	}
      }
    },
    lua = {
      default_task = "run",
      tasks = {
	run = {
	  command = "luajit %",
	  type = "shell",
	  output = "terminal"
	}
      }
    },
  }
})

vim.keymap.set("n", "<leader>e", function() yabs:run_default_task() end)

return build
