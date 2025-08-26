return {
	"L3MON4D3/LuaSnip",
	version = "v2.*", 
	dependencies = { "rafamadriz/friendly-snippets" },
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		require("luasnip.loaders.from_vscode").lazy_load()
		local key = vim.keymap
		key.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
		key.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
		key.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

		key.set({"i", "s"}, "<C-E>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, {silent = true})
	end,
}
