return {

    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {enable = true},
	    indent = {enable = true},
	    autotage = {enable = true},
	    ensure_installed = {
		"lua",
		"html",
		"css",
		"python",
		"c",
		"cpp",
		"markdown"
	    },
	    auto_install = true,
	})
    end
}
