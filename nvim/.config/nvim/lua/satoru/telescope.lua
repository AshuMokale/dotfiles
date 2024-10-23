require('telescope').setup {}

-- Telescope keys
local set = vim.keymap.set
local builtin = require('telescope.builtin')
set('n', '<C-p>', builtin.find_files) -- find files
set('n', '<leader>fh', builtin.help_tags) -- Help tags
