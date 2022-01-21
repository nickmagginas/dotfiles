vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"
vim.opt.fcs = "eob: "

vim.opt.shiftwidth = 2

-- Some terminal stuff

vim.keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l")

vim.cmd [[ autocmd BufWinEnter,WinEnter term://* startinsert ]]
vim.cmd [[ autocmd TermOpen * setlocal nonumber norelativenumber ]]

-- Default colors

vim.cmd [[ colorscheme rose-pine ]]

