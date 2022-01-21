local debugging = {}
local util = require("lspconfig.util")

debugging.dap = { "mfussenegger/nvim-dap" }

local dap = require("dap")

dap.defaults.fallback.terminal_win_cmd = "bot10 new"

dap.adapters.python = {
  type = "executable",
  command = vim.fn.expand("~/.miniconda/envs/debugpy/bin/python"),
  args = { "-m", "debugpy.adapter" }
}

dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "launch file",
    program = "${file}",
    pythonPath = function()
      _, venv = require("packages/python_utils").get_python_venv_for_file()

      return (venv and util.path.join(vim.fn.expand("~/.miniconda/envs"), venv, "/bin/python")) or "python"
    end,
    justMyCode = false,
    console = "integratedTerminal"
  }
}

function evaluate_selection_in_repl()

  if vim.api.nvim_get_mode().mode ~= "V" then
    return
  end

  start_line = vim.fn.getpos("v")[2]
  end_line = vim.fn.getpos(".")[2]

  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end

  selection_text = table.concat(vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, true), "\n")

  dap.session():evaluate(selection_text)

end

vim.keymap.set("n", "<Tab>c", dap.continue)
vim.keymap.set("n", "<Tab>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<Tab>d", dap.clear_breakpoints)
vim.keymap.set("n", "<Tab>r", function() dap.repl.toggle({}, "bo vsplit") end)
vim.keymap.set("n", "<Tab>s", require("dap.ui.widgets").hover)
vim.keymap.set("n", "<Tab>q", dap.close)
vim.keymap.set("v", "<Tab>e", evaluate_selection_in_repl)

vim.fn.sign_define("DapBreakpoint", { text="", texthl="DiagnosticError" })
vim.fn.sign_define("DapStopped", { text="→", texthl="DiagnosticInfo", linehl="DiffDelete" })

return debugging
