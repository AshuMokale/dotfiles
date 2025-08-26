return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup {
			options = {
				theme = "gruvbox-material"
			},
			sections = {
				lualine_x = {"filetype"}
			},
			tabline = {
				lualine_a = {'buffers'},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {'tabs'}
			},
		}
	end
}
