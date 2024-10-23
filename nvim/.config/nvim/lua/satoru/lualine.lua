require('lualine').setup {
	options = {
		theme = 'gruvbox',
		section_separators = { left = '', right = '' },
		component_separators = { left = '', right = '' }
	},
	sections = {
		lualine_x = { "filetype" }
	},
	tabline = {
		lualine_a = {'buffers'},
		-- lualine_b = {'branch'},
		-- lualine_c = {'filename'},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {'tabs'}
	}
}
