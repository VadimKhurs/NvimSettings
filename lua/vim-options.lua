vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = "\\" 

local set = vim.keymap.set

set({'n', 'x'}, '<C-C>', '"+y"')
set({'n', 'x'}, '<C-X>', '"+d"')

set({'n', 'x'}, '<leader>\\', ':vsplit<CR>')

set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
