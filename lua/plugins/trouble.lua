return {
        "folke/trouble.nvim",
        event = "LspAttach",
        opts = {
                auto_close = true,
                win = {
                        type = "split",
                        relative = "win",
                        position = "bottom"
                },
                modes = {
                        diagnostic = {
                                mode = "diagnostics",
                                filter = { buf = 0 }
                        }
                }
        },
        cmd = "Trouble",
        keys = {
                {
                        "<leader>q",
                        "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<CR>",
                        mode = "n",
                        desc = "Buffer diagnostics"
                }
        }
}
