return {
        "akinsho/toggleterm.nvim",
        config = function()
                require("toggleterm").setup {
                        size = function(term) 
                                if term.direction == "vertical" then
                                        return vim.o.columns * 0.5
                                end
                        end,
                        float_opts = {
                                border = "curved"
                        }
                }

                vim.keymap.set("n", "<A-v>", "<cmd>1ToggleTerm direction=vertical<CR>")
                vim.keymap.set("t", "<A-v>", "<cmd>1ToggleTerm direction=vertical<CR>")

                vim.keymap.set("n", "<A-i>", "<cmd>2ToggleTerm direction=float<CR>")
                vim.keymap.set("t", "<A-i>", "<cmd>2ToggleTerm direction=float<CR>")

                local opts = {buffer = 0}
                vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
                vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
                vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
                vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
                vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
                vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
                vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        end
}
