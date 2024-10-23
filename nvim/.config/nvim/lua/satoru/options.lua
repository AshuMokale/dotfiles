-- Nerd font enabled
vim.g.have_nerd_font = true

local opt = vim.opt

-- Options
opt.number = true -- Number  line
opt.relativenumber = true -- Relative number line
opt.mouse = 'a' -- Enable mouse
opt.showmode = false -- Hide current mode
opt.breakindent = true -- No idea what this option is
opt.ignorecase = true -- Disable case sensitive search.
opt.smartcase = true -- Disable case sensitive search.
opt.splitbelow = true -- Enable new buffer below 
opt.splitright = true -- Enable new buffer in right 
opt.list = true -- No idea what this option is
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- No idea what this option is
opt.inccommand = 'split' -- Preview as you type
opt.cursorline = true -- Highlight current line
opt.scrolloff = 10 -- Set 10 lines above and below the cursor
opt.backup = false -- Disable backup file
opt.swapfile = false -- Disable swapfile
opt.tabstop = 4 -- Set tab = 4
opt.shiftwidth = 4 -- Set tab = 4
opt.numberwidth = 1 -- Number line width
opt.termguicolors = true -- Enable colors for themes
