vim.opt.number = true
vim.opt.ignorecase = true
vim.keymap.set( "i", "jk", "<esc>")
vim.g.mapleader = "'"
vim.keymap.set("n", "<Leader>zz", ":let &scrolloff=999-&scrolloff<cr>")
