local completion = { }

completion.cmp = { "hrsh7th/nvim-cmp", requires = {
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lua",
  "L3MON4D3/LuaSnip"
  },

  config = function()

    vim.opt.completeopt = { "menu", "menuone", "noselect" }

    local cmp = require("cmp")

    cmp.setup({
      snippet = {
	expand = function(args)
	  require('luasnip').lsp_expand(args.body)
	end,
      },
      mapping = {
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
      },
      sources = {
	{ name = "nvim_lsp" },
	{ name = "nvim_lua" },
	{ name = "luasnip" },
	{ name = "path" },
	{ name = "buffer", keyword_length = 5 }
      },
      experimental = {
	ghost_text = true,
      },
    })

    end
}

return completion


