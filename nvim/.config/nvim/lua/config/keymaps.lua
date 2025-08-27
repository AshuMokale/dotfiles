-- Using the keymaps API
local key = vim.keymap

-- vim.g.mapleader = " " -- Already set in config.lazy
-- vim.g.maplocalleader = " " -- Already set in config.lazy

key.set("n", "<C-s>", "<cmd>write<CR>") -- Save current file
key.set("n", "<C-w>", "<cmd>bdelete<CR>") -- Close buffer
key.set("n", "<Tab>", "<cmd>bnext<CR>") -- Next buffer
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>") -- Previous buffer
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>") -- Previous buffer
key.set("n", "<leader>e", "<cmd>Lex 30<CR>") -- Open file tree
key.set("n", "<ESC>", "<cmd>nohlsearch<CR>") -- Open file tree

-- Telescope keympas
local builtin = require("telescope.builtin")
key.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
key.set("n", "<M-g>", builtin.live_grep, { desc = "Telescope live grep" })
key.set("n", "<M-b>", builtin.buffers, { desc = "Telescope buffers" })
key.set("n", "<M-S-h>", builtin.help_tags, { desc = "Telescope help tags" })

-- Snippet(LuaSnip) keymaps
local ls = require("luasnip")
key.set("i", "<C-K>", function()
	ls.expand()
end, { silent = true })
key.set({ "i", "s" }, "<Tab>", function()
	ls.jump(1)
end, { silent = true })
key.set({ "i", "s" }, "<S-Tab>", function()
	if ls.jumpable(-1) then
		print("Yes")
		ls.jump(-1)
	end
end, { silent = true })
key.set({ "i", "s" }, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })
