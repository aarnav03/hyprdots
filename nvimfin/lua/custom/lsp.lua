require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "clangd" },  -- lsps one wants 
  automatic_installation = true,  -- keep it true c: 
})

-- LSPConfig setup
local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}

lspconfig.clangd.setup{}

