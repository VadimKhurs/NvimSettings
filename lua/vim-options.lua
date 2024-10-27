vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = " " 

local set = vim.keymap.set

set({'n', 'x'}, '<C-C>', '"+y"')
set({'n', 'x'}, '<C-X>', '"+d"') 
