-- vim: set foldenable foldmethod=marker:

vim.env.VIMDIR = vim.fn.expand("$HOME/.config/vim")

-- dpp.vim {{{
local dppBase = vim.fn.expand("$HOME/.local/share/vim/dpp/")
local dppSrc = dppBase .. "repos/github.com/Shougo/dpp.vim"
vim.opt.runtimepath:prepend(dppSrc)

local dpp = require("dpp")
if dpp.load_state(dppBase) then
  for k, v in pairs({
    "Shougo/dpp-ext-installer",
    "Shougo/dpp-ext-lazy",
    "Shougo/dpp-ext-toml",
    "Shougo/dpp-protocol-git",
    "vim-denops/denops.vim",
  }) do
    local plugin_dir = dppBase .. "repos/github.com/" .. v
    vim.opt.runtimepath:prepend(plugin_dir)
  end
  vim.api.nvim_create_autocmd("User", {
    pattern = "DenopsReady",
    callback = function()
      vim.notify("dpp load_state() is failed")
      dpp.make_state(dppBase, "$HOME/.config/vim/dpp/config.ts")
    end,
  })
end

vim.api.nvim_create_autocmd("User", {
  pattern = "Dpp:makeStatePost",
  callback = function()
    vim.notify("dpp load_state() is done")
  end,
})
-- }}}

vim.cmd("filetype indent plugin on")
vim.cmd("syntax on")

-- 1 important {{{
-- }}}
-- 2 moving around, searching and patterns {{{
vim.opt.autochdir = true
vim.opt.wrapscan = false
vim.opt.incsearch = true
vim.opt.magic = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- }}}
-- 3 tags {{{
vim.opt.tags = "./tags;,tags"
-- }}}
-- 4 displaying text {{{
vim.opt.scrolloff = 5
vim.opt.wrap = false 
vim.opt.list = true
-- }}}
-- 5 syntax, highlighting and spelling {{{
vim.opt.hlsearch = true 
vim.opt.cursorline = true 
-- }}}
-- 6 multiple windows {{{
vim.opt.laststatus = 2 
vim.opt.hidden = true 
-- }}}
-- 7 multiple tab pages {{{
-- }}}
-- 8 terminal {{{
-- }}}
-- 9 using the mouse {{{
-- }}}
-- 10 messages and info {{{
vim.opt.showcmd = true 
vim.opt.showmode = true 
vim.opt.ruler = true 
vim.opt.visualbell = false 
-- }}}
-- 11 selecting text {{{
vim.opt.clipboard = unnamed,autoselect
-- }}}
-- 12 editing text {{{
vim.opt.undofile = false 
vim.opt.showmatch = true 
-- }}}
-- 13 tabs and indenting {{{
-- }}}
-- 14 folding {{{
-- }}}
-- 15 diff mode {{{
-- }}}
-- 16 mapping {{{
-- }}}
-- 17 reading and writing files {{{
vim.opt.backup = false 
vim.opt.autoread = true 
-- }}}
-- 18 the swap file {{{
vim.opt.swapfile = false 
-- }}}
-- 19 command line editing {{{
vim.opt.wildmenu = true 
-- }}}
-- 20 executing external commands {{{
-- }}}
-- 21 running make and jumping to errors (quickfix) {{{
-- }}}
-- 22 language specific {{{
-- }}}
-- 23 multi-byte characters {{{
-- }}}
-- 24 various {{{
-- }}}

-- keymap {{{
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", ":Ddu buffer<CR>")
vim.keymap.set("n", "<leader>g", ":DduRg<CR>")
vim.keymap.set("n", "<leader>o", ":Ddu file_rec<CR>")
-- }}}
