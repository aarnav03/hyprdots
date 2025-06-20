return {
  -- LSP Setup
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Auto-completion (nvim-cmp)
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter", -- Load LuaSnip when entering insert mode
  },

  -- Install cmp_luasnip for integration with nvim-cmp
  {
    "saadparwaiz1/cmp_luasnip", -- Integration between nvim-cmp and LuaSnip
    event = "InsertEnter", -- Load cmp_luasnip when entering insert mode
  },

  -- Install nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip", -- Ensure LuaSnip is loaded
      "saadparwaiz1/cmp_luasnip", -- Ensure cmp_luasnip is installed for LuaSnip support
    },
    config = function()
      require "custom.configs.cmp" -- Load custom cmp config
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      theme = "catppuccin",
    },
  },
  -- {
  --     "kylechui/nvim-surround",
  --     version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  --     event = "VeryLazy",
  --     config = function()
  --         require("nvim-surround").setup({
  --             -- Configuration here, or leave empty to use defaults
  --         })
  --     end
  -- },
}
