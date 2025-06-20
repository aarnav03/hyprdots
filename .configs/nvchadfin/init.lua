vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
  { "neovim/nvim-lspconfig" }, -- LSP configuration
  { "williamboman/mason.nvim" }, -- Mason for easy LSP server installation
  { "williamboman/mason-lspconfig.nvim" }, -- Mason + lspconfig integration

  -- Auto-completion (nvim-cmp)
  { "hrsh7th/nvim-cmp" }, -- Main completion plugin
  { "hrsh7th/cmp-nvim-lsp" }, -- LSP completions
  { "hrsh7th/cmp-buffer" }, -- Buffer completions
  { "hrsh7th/cmp-path" }, -- Path completions
  { "hrsh7th/cmp-vsnip" },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"
require "custom.lsp" -- LSP setup
require "custom.cmp" -- nvim-cmp setup
require "custom.nvim-surround"
-- require "custom.color"

vim.schedule(function()
  require "mappings"
end)
