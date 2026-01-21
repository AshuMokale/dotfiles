return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		defaults = {
			-- View telescope.layout docs
			layout_strategy = "horizontal",
			layout_config = {
				preview_cutoff = 0.4,
				prompt_position = "top",
			},
			file_ignore_patterns = {
				"%.class",
				"^bin/",
				"^docs/",
			},
		},
	},
}
