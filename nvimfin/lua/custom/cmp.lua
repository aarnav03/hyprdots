local cmp = require "cmp"
local luasnip = require "luasnip"

cmp.setup {
  snippet = {
    expand = function(args)
      -- Use LuaSnip to expand the snippet
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm { select = true },
  },
  sources = cmp.config.sources {
    { name = "nvim_lsp" }, -- Use LSP for autocompletion
    { name = "luasnip" }, -- Use LuaSnip for snippet expansion
  },
}
