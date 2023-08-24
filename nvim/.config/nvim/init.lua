require('satoru.options')
require('satoru.keymaps')

-- Lazy nvim packager manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('satoru.plugins')

-- Plugin Config files
require('satoru.nvim-comment')

-- Theme
vim.cmd[[colorscheme rose-pine-moon]]
