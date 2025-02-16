require "nvchad.options"

-- add yours here!

local opt = vim.opt

opt.expandtab = true    -- Convert tabs to spaces
opt.shiftwidth = 4      -- Number of spaces for each indentation level
opt.tabstop = 4         -- Number of spaces that a tab represents

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.api.nvim_set_option_value("colorcolumn", "80", {})
