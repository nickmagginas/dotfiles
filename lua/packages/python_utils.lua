local python_utils = {}

util = require("lspconfig.util")


-- This assumes we are using pyright and we have a config file
-- to specify our venvs

function python_utils.get_python_venv_for_file(buffer_number)

  local bufnr = buffer_number or vim.api.nvim_get_current_buf()

  local startpath = vim.api.nvim_buf_get_name(bufnr)

  local root_dir = util.search_ancestors(startpath, function(path)
    if util.path.is_file(util.path.join(path, "pyrightconfig.json")) then
      return path
    end
  end)

  if not root_dir then 
    return 
  end

  local config_path = util.path.join(root_dir, "pyrightconfig.json")

  local config = vim.fn.json_decode(vim.fn.readfile(config_path))

  return root_dir, config["venv"]
end


return python_utils
