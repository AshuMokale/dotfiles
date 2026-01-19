return {
	"rose-pine/neovim",
	name = "rose-pine",
	opts = {
		variant = "moon",
		dark_variant = "moon",
		dim_inactive_windows = true
	},
	config = function()
		vim.cmd("colorscheme rose-pine-moon")
	end
}
