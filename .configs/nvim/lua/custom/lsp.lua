require("mason").setup()

-- Integrate Mason with lspconfig
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "clangd" },  -- List LSP servers you want to install
  automatic_installation = true,  -- Automatically install missing LSP servers
})

-- LSPConfig setup
local lspconfig = require('lspconfig')

-- Python LSP: pyright
lspconfig.pyright.setup{}

-- C/C++ LSP: clangd
lspconfig.clangd.setup{}

-- You can add more servers here as needed (e.g., tsserver, rust_analyzer, etc.)
