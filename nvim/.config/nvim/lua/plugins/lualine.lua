return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "everforest",
		},
		sections = {
			lualine_x = { "filetype" },
		},
		tabline = {
			lualine_a = { "buffers" },
			lualine_x = {},
			lualine_y = {},
			lualine_z = { "tabs" },
		},
	},
}
