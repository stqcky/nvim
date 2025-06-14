return {
        "akinsho/toggleterm.nvim",
        opts = {

                size = function(term)
                        if term.direction == "vertical" then
                                return vim.o.columns * 0.5
                        end
                end,
                float_opts = {
                        border = "curved"
                }
        },
        keys = {
                {
                        "<A-v>",
                        "<cmd>1ToggleTerm direction=vertical<CR>",
                        mode = "n",
                        desc = "Toggle vertical terminal"
                },
                {
                        "<A-v>",
                        "<cmd>1ToggleTerm direction=vertical<CR>",
                        mode = "t",
                        desc = "Toggle vertical terminal"
                },

                {
                        "<A-i>",
                        "<cmd>2ToggleTerm direction=float<CR>",
                        mode = "n",
                        desc = "Toggle floating terminal"
                },
                {
                        "<A-i>",
                        "<cmd>2ToggleTerm direction=float<CR>",
                        mode = "t",
                        desc = "Toggle floating terminal"
                },

                { '<esc>', [[<C-\><C-n>]],        mode = "t", buffer = 0 },
                { 'jk',    [[<C-\><C-n>]],        mode = "t", buffer = 0 },
                { '<C-h>', [[<Cmd>wincmd h<CR>]], mode = "t", buffer = 0 },
                { '<C-j>', [[<Cmd>wincmd j<CR>]], mode = "t", buffer = 0 },
                { '<C-k>', [[<Cmd>wincmd k<CR>]], mode = "t", buffer = 0 },
                { '<C-l>', [[<Cmd>wincmd l<CR>]], mode = "t", buffer = 0 },
                { '<C-w>', [[<C-\><C-n><C-w>]],   mode = "t", buffer = 0 },
        }
}
