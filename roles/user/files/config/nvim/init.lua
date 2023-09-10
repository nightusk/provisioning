-- 2 moving around, searching and patterns
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- 4 displaying text
vim.opt.scrolloff = 5
vim.opt.wrap = false
vim.opt.list = true
-- 5 syntax, highlighting and spelling
vim.opt.cursorline = true
-- 12 editing text
vim.opt.undofile = true

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
