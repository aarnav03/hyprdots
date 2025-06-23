return {
	--[[	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
					-- You can customize some of the format options for the filetype (:help conform.format)
					rust = { "rustfmt", lsp_format = "fallback" },
					-- Conform will run the first available formatter
					--javascript = { "prettierd", "prettier", stop_after_first = true },
					c = { "clang-format" },
				},
			})
			require("conform").setup({
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	} ]]
	--,
	{
		"nvimtools/none-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					--python stuff
					null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
					null_ls.builtins.formatting.isort,
					null_ls.builtins.diagnostics.ruff,
					null_ls.builtins.code_actions.ruff,

					-- c, cpp
					null_ls.builtins.formatting.clang_format.with({
						filetypes = { "c", "cpp", "objc", "objcpp" },
					}),
					--lua
					null_ls.builtins.formatting.stylua,
				},

				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ bufnr = bufnr })
							end,
						})
					end
				end,
			})
		end,
	},
}
