-- Shorten API
local set = vim.keymap.set

-- Map Leader
vim.g.mapleader = ' '

-- Noreamps and Silent
local opts = { noremap = true, silent = true }

-- Quick normal mode
set('i', 'jk', '<ESC>', opts)

-- File keymaps
set('n', '<C-s>', ':w<CR>', opts) -- Save file
set('n', '<C-x>', ':so %<CR>', opts) -- Source file
set('n', '<leader>e', ':Ex<CR>', opts) -- Open file manager

-- Comment
set('n', '<C-c>', ':CommentToggle<CR>', opts) -- Comment line
set('v', '<C-c>', ':CommentToggle<CR>', opts) -- Comment selection

-- Clear highlights
set('n', '<leader>nh', ':nohl<CR>', opts)

-- Navigation keymaps
set('n', '<C-h>', '<C-w>h', opts) -- Switch to left window
set('n', '<C-j>', '<C-w>j', opts) -- Switch to down window
set('n', '<C-k>', '<C-w>k', opts) -- Switch to up window
set('n', '<C-l>', '<C-w>l', opts) -- Switch to right window

-- Split keymaps
set('n', '<leader>sb', ':split<CR>', opts) -- Split below
set('n', '<leader>sv', ':vsplit<CR>', opts) -- Split right

-- Buffer keypams
set('n', '<Tab>', ':bNext<CR>', opts) -- Next buffer
set('n', '<S-Tab>', ':bprevious<CR>', opts) -- Previous buffer
set('n', '<C-w>', ':bdelete<CR>', opts) -- Close buffer
set('n', '<C-q>', ':close<CR>', opts) -- Close window

-- Terminal keymaps
set('t', '<C-w>', 'exit<CR><CR>', opts) -- Close terminal
