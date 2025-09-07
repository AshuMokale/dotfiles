return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		defaults = {
			-- View telescope.layout docs
			layout_strategy = "vertical",
			layout_config = {
				preview_cutoff = 0.4,
			},
			file_ignore_patterns = {
				"%.class",
				"^bin/",
				"^docs/",
			},
		},
	},
}
