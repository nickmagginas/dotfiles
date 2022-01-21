require("packer").startup(function()

  use { "wbthomason/packer.nvim" }

  local package_configs = vim.tbl_extend("keep", require("packages/colorschemes"), require("packages/telescope"), require("packages/treesitter"), require("packages/completion"), require("packages/lsp_configuration"), require("packages/statusline"), require("packages/build"), require("packages/debugging"), require("packages/editor"))

  for _, configuration in pairs(package_configs) do

	  use(configuration)

  end


end)
