
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
require("vim-opts")
require("lazy").setup("plugins")
-- vim.cmd("colorscheme pywal")
-- vim.cmd("call timer_start( 2000, { id -> execute( 'colorscheme pywal' ) }, { 'repeat': -1 } )")

