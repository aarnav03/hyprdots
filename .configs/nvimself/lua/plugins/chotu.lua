return {
    {
	--git stuff
	'tpope/vim-fugitive',
    },
    {
	--css colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
}
