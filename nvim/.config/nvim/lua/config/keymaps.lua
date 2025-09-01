-- Using the keymaps API
local key = vim.keymap

-- vim.g.mapleader = " " -- Already set in config.lazy
-- vim.g.maplocalleader = " " -- Already set in config.lazy

key.set("n", "<C-s>", "<cmd>write<CR>") -- Save current file
key.set("n", "<C-q>", "<cmd>bdelete<CR>") -- Close buffer
key.set("n", "<Tab>", "<cmd>bnext<CR>") -- Next buffer
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>") -- Previous buffer
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>") -- Previous buffer
key.set("n", "<leader>e", "<cmd>Ex<CR>") -- Open file tree
key.set("n", "<ESC>", "<cmd>nohlsearch<CR>") -- Open file tree

-- Telescope keympas
local builtin = require("telescope.builtin")
key.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
key.set("n", "<M-g>", builtin.live_grep, { desc = "Telescope live grep" })
key.set("n", "<M-b>", builtin.buffers, { desc = "Telescope buffers" })
key.set("n", "<M-S-h>", builtin.help_tags, { desc = "Telescope help tags" })
key.set("n", "<M-s>", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
key.set("n", "<M-s><M-w>", builtin.grep_string, { desc = "[S]earch current [W]ord" })
key.set("n", "<M-d>", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
key.set("n", "<M-r>", builtin.resume, { desc = "[S]earch [R]esume" })
key.set("n", "<M-o>", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

-- LSP keymaps
key.set({ "n", "x" }, "gra", vim.lsp.buf.code_action)
key.set("n", "<leader>D", vim.diagnostic.open_float)
key.set("n", "gK", function()
	local new_config = not vim.diagnostic.config().virtual_lines
	vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = "Toggle diagnostic virtual_lines" })

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
