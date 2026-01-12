-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false

opt.tabstop = 4 -- TAB = 4 spaces
opt.expandtab = true -- Insert spaces on pressing the TAB key
opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
opt.shiftwidth = 4 -- Number of spaces inserted when indenting

opt.spelllang = { "en", "fr" }

opt.sidescrolloff = 2 -- Columns of context

opt.cc = { 80 }

-- vim.diagnostic.enable(false)
