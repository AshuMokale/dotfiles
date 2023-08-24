require('telescope').setup()

-- Telescope keymaps
local set = vim.keymap.set
local opts = { noremap = true, silent = true}

local builtin = require('telescope.builtin')
set('n', '<C-p>', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})
