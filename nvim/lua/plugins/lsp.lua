return {
  {
    "neovim/nvim-lspconfig",
	config = function ()

	    local capabilities = require('cmp_nvim_lsp').default_capabilities()

	    local lspconfig = require("lspconfig")
	    lspconfig.lua_ls.setup({
		capabilities = capabilities})
	    lspconfig.pyright.setup({
		capabilities = capabilities})
	    lspconfig.rust_analyzer.setup({
		capabilities = capabilities})
	    lspconfig.clangd.setup({
		capabilities = capabilities})

	    vim.keymap.set('n','K',vim.lsp.buf.hover,{})
	    vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
	    vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})
	end,
vim.diagnostic.config({
		virtual_text = true,
		signs = true,
		underline = true,
		update_in_insert = false,
		severity_sort = true,
})

  },

  {
    "williamboman/mason.nvim",
    config = function()
	require("mason").setup()
    end
  },

--[[  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright","clangd" },
      })

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = { "lua_ls", "pyright", "clangd" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end
    end,
  },
    ]]--
{
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer","pyright","clangd" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
},

   --[[ {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")

      -- Setup capabilities for autocompletion
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if cmp_nvim_lsp_ok then
        capabilities = cmp_nvim_lsp.default_capabilities()
      end

      -- Define keymaps only once per buffer when LSP attaches
      vim.api.nvim_create_autocmd("LspAttach", {
        desc = "LSP keymaps",
        callback = function(event)
          local opts = { buffer = event.buf, noremap = true, silent = true }
          local keymap = vim.keymap.set

          keymap("n", "gd", vim.lsp.buf.definition, opts)
          keymap("n", "gD", vim.lsp.buf.declaration, opts)
          keymap("n", "gi", vim.lsp.buf.implementation, opts)
          keymap("n", "gr", vim.lsp.buf.references, opts)
          keymap("n", "K", vim.lsp.buf.hover, opts)
          keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
          keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          keymap("n", "<leader>f", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
          keymap("n", "<leader>e", vim.diagnostic.open_float, opts)
          keymap("n", "[d", vim.diagnostic.goto_prev, opts)
          keymap("n", "]d", vim.diagnostic.goto_next, opts)
        end,
      })

      local servers = { "lua_ls", "pyright","clangd" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end
    end,
  },
    vim.diagnostic.config({
  virtual_text = true,    -- show inline errors/warnings
  signs = true,           -- show in sign column
  underline = true,       -- underline problems
  update_in_insert = false,
  severity_sort = true,
})
    ]]--
}

