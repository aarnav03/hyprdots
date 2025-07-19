vim.g.mapleader = " "

-- neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<C-m>", ":Neotree action=close <CR>")

-- tabs
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { noremap = true, silent = true })

-- telescope stuff
vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>")

--[[
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "telescope help tags" })
vim.keymap.set("n","<leader>fr",:Telescope oldfiles<CR>)

-- git stuff 
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})

-- lsp helper stuff
 vim.keymap.set('n','K',vim.lsp.buf.hover,{})
vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})


]]

--

--lspsaga
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>")
