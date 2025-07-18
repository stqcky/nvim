vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.schedule(function()
        vim.o.clipboard = 'unnamedplus'
end)

local opt = vim.opt
local o = vim.o

o.updatetime = 250
o.timeoutlen = 300
o.inccommand = "split"
o.scrolloff = 10

opt.termguicolors = true

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

opt.fillchars = { eob = " " }

local signs = {
        Error = "",
        Warn = "",
        Info = "",
        Hint = "󰌵"
}

for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
        virtual_text = {
                spacing = 2,
                prefix = function(diagnostic)
                        local icons = {
                                [vim.diagnostic.severity.ERROR] = signs.Error,
                                [vim.diagnostic.severity.WARN] = signs.Warn,
                                [vim.diagnostic.severity.INFO] = signs.Info,
                                [vim.diagnostic.severity.HINT] = signs.Hint,
                        }

                        return icons[diagnostic.severity] .. " "
                end
        },
        signs = false,
        underline = true,
        update_in_insert = false,
        severity_sort = true
})

vim.o.laststatus = 3
