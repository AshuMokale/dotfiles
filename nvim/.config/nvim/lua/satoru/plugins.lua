local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Lazy setup
require("lazy").setup({
	spec = {
		-- Plugins here
		{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true},
		{
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons', lazy=true }
		},
		{
			'nvim-telescope/telescope.nvim', tag = '0.1.8',
			-- or                              , branch = '0.1.x',
			dependencies = { 'nvim-lua/plenary.nvim' },
			lazy = true,
		},
		{ 'numToStr/Comment.nvim',
			config = function()
				require('Comment').setup()
			end,
		},
		{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
		{
			'windwp/nvim-autopairs',
			event = "InsertEnter",
			config = true,
			opts = { enable_check_bracket_line = false },
		},
	},
	-- automatically check for plugin updates
	checker = { enabled = true },
})
