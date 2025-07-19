vim.opt.number = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = "rounded" -- options: "single", "double", "rounded", "solid", "shadow"
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
