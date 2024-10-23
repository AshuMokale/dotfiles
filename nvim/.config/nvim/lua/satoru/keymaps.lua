-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local set = vim.keymap.set

-- Keymaps
set('n', '<C-s>', '<cmd>w<CR>') -- Save file
set('n', '<ESC>', '<cmd>nohlsearch<CR>') -- Clear highlights
set('i', 'jk', '<ESC>') -- Switch to normal mode
set('n', '<C-w>', '<cmd>bdelete<CR>') -- Close current buffer
set('n', '<C-q>', '<cmd>close<CR>') -- Close current window
set('n', '<Tab>', '<cmd>bnext<CR>') -- Close current buffer
set('n', '<S-Tab>', '<cmd>bprevious<CR>') -- Close current buffer
set('n', '<leader>e', '<cmd>Lexplore<CR>') -- Open file explorer
set('n', '<C-h>', '<C-w><C-h>') -- move to left window
set('n', '<C-j>', '<C-w><C-j>') -- move to below window
set('n', '<C-k>', '<C-w><C-k>') -- move to above window
set('n', '<C-l>', '<C-w><C-l>') -- move to right window

