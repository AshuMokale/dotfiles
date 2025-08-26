-- Using the keymaps API
local key = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

key.set("n", "<C-s>", "<cmd>write<CR>") -- Save current file
key.set("n", "<C-w>", "<cmd>bdelete<CR>") -- Close buffer
key.set("n", "<Tab>", "<cmd>bnext<CR>") -- Next buffer
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>") -- Previous buffer
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>") -- Previous buffer
key.set("n", "<leader>e", "<cmd>Lex 30<CR>") -- Open file tree
key.set("n", "<ESC>", "<cmd>nohlsearch<CR>") -- Open file tree
