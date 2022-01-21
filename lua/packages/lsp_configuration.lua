local lsp_configuration = {}

lsp_configuration.lsp = { "neovim/nvim-lspconfig", config = function()

  local lspconfig = require("lspconfig")

  local on_attach = function(_, bufnr)
    vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { buffer = bufnr })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
    vim.keymap.set("n", "<leader>c", vim.lsp.buf.rename, { buffer = bufnr })
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, { buffer = bufnr })
    vim.cmd [[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() ]]
  end

  local updated_capabilities = require("cmp_nvim_lsp").update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  )

  lspconfig.pyright.setup({
    capabilities = updated_capabilities,
    on_attach = on_attach,
  })

  -- local runtime_path = vim.split(package.path, ";")
  -- table.insert(runtime_path, "lua/?.lua")
  -- table.insert(runtime_path, "lua/?/init.lua")
  --
  -- lspconfig.sumneko_lua.setup({
  --   capabilities = updated_capabilities,
  --   on_attach = on_attach,
  --   settings = {
  --     Lua = {
  --       runtime = {
  --         version = "LuaJit",
  --         path = runtime_path,
  --       },
  --       diagnostics = {
  --         globals = { "vim", "use", "package" },
  --       },
  --       workspace = {
  --         library = vim.api.nvim_get_runtime_file("", true),
  --       },
  --     },
  --   },
  -- })

end
}

lsp_configuration.null_ls = { "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" }, config = function()
    require("null-ls").setup({
      sources = {
	require("null-ls").builtins.formatting.stylua,
	require("null-ls").builtins.formatting.black,
	require("null-ls").builtins.diagnostics.pylint.with({
	  -- method = require("null-ls.methods").DIAGNOSTICS_ON_SAVE,
	  cwd = function(params)
	    root_dir, _ = require("packages/python_utils").get_python_venv_for_file(params.bufnr)
	    return root_dir
	  end,
	})
      },

    })
  end,
}

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(vim.lsp.handlers.hover, {
    border = "single"
  }
)

vim.diagnostic.config({ 
  underline = false,
  severity_sort = true,
  virtual_text = { 
    prefix = "==>",
    spacing = 1,
    format = function(diagnostic)
      if diagnostic.message:find("\n") then
	return diagnostic.message:match(".+\n")
       end
       return diagnostic.message
     end,
   },
})

return lsp_configuration
