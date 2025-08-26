return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local key = vim.keymap
		local builtin = require('telescope.builtin')
		key.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
		key.set('n', '<M-g>', builtin.live_grep, { desc = 'Telescope live grep' })
		key.set('n', '<M-b>', builtin.buffers, { desc = 'Telescope buffers' })
		key.set('n', '<M-S-h>', builtin.help_tags, { desc = 'Telescope help tags' })
	end,
}
