-- Using the options API
local opt = vim.opt

-- Enable nerd font
vim.g.have_nerd_font = true

opt.relativenumber = true -- relative line numbers
opt.numberwidth = 1       -- number column width
opt.colorcolumn = "80"    -- Ruler position
opt.shiftwidth = 4        -- Shift size
opt.tabstop = 4           -- Default tab size
opt.backup = false        -- Disable backup file
opt.swapfile = false      -- Disable swap file
opt.termguicolors = true  -- Enable colors for themes
opt.scrolloff = 10        -- Set 10 lines above the cursor
opt.smartcase = true      -- Disable case sensitive search
opt.ignorecase = true     -- Disable case sensitive search
-- opt.inccommand = "split" -- Preview changes as you type
opt.clipboard = "unnamedplus"
opt.wrap = true
opt.linebreak = true
opt.hlsearch = false
opt.incsearch = true
