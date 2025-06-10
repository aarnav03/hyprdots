local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      -- Use vsnip for expanding snippets (if you use vsnip)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),  -- Trigger completion manually
    ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Confirm selection with Enter
    ["<Tab>"] = cmp.mapping.select_next_item(),  -- Next item with Tab
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),  -- Previous item with Shift-Tab
  }),

  sources = {
    { name = "nvim_lsp" },   -- LSP completions (from pyright, clangd, etc.)
    { name = "buffer" },     -- Buffer completions (from the text in the current file)
    { name = "path" },       -- Path completions (useful for import/require statements)
    { name = "vsnip" },      -- Snippet completions (if using snippets)
  },
})
