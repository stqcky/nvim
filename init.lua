local opt = vim.opt

-- take indent for new line from previous line
opt.autoindent = true
-- cursor line highlight
opt.cursorline = true
-- use spaces instead of tabs
opt.expandtab = true
-- ignore case in search
opt.ignorecase = true
-- show line numbers
opt.number = true
-- relative line number
opt.relativenumber = true
-- don't ignore casing when pattern has uppercase
opt.smartcase = true
-- smart indenting for C programs
opt.smartindent = true
-- use 'shiftwidth' when inserting tab
opt.smarttab = true
-- spaces in a tab
opt.softtabstop = 4
-- new windows split below
opt.splitbelow = true
-- new windows split right
opt.splitright = true
-- spaces in a tab
opt.tabstop = 4
-- save undo history
opt.undofile = true
-- wrap lines
opt.wrap = true

require "lazy"
