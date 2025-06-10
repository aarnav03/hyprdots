return {
  -- LSP Setup
  { 'neovim/nvim-lspconfig' },        -- LSP configuration
  { 'williamboman/mason.nvim' },      -- Mason for easy LSP server installation
  { 'williamboman/mason-lspconfig.nvim' },  -- Mason + lspconfig integration

  -- Auto-completion (nvim-cmp)
  { 'hrsh7th/nvim-cmp' },             -- Main completion plugin
  { 'hrsh7th/cmp-nvim-lsp' },         -- LSP completions
  { 'hrsh7th/cmp-buffer' },           -- Buffer completions
  { 'hrsh7th/cmp-path' },             -- Path completions
  { 'hrsh7th/cmp-vsnip' },            -- Snippet completions (if using snippets)
}
