vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.g.have_nerd_font = true

vim.opt.number = true
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)
-- Enable break indent
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = {tab = "» ", trail = "·", nbsp = "␣"}
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 999

vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", ";q", ":q<cr>")
vim.keymap.set("n", ";w", ":w<cr>")
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<c-d>", "<c-d>zz",
               {desc = "Keep line centered while scrolling down by half page"})
vim.keymap.set("n", "<c-u>", "<c-u>zz",
               {desc = "Keep line centered while scrolling up by half page"})
vim.keymap.set("n", "n", "nzzzv", {desc = "Center next selected searched text"})
vim.keymap.set("n", "N", "Nzzzv",
               {desc = "Center previous selected searched text"})
vim.keymap.set("n", "<C-h>", "<C-w><C-h>",
               {desc = "Move focus to the left window"})
vim.keymap.set("n", "<C-l>", "<C-w><C-l>",
               {desc = "Move focus to the right window"})
vim.keymap.set("n", "<C-j>", "<C-w><C-j>",
               {desc = "Move focus to the lower window"})
vim.keymap.set("n", "<C-k>", "<C-w><C-k>",
               {desc = "Move focus to the upper window"})
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist,
               {desc = "Open diagnostic [Q]uickfix list"})

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank",
                                        {clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})
