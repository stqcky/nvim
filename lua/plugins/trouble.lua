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
                                auto_open = true,
                                mode = "diagnostics",
                                filter = { buf = 0 }
                        }
                }
        },
        cmd = "Trouble",
}
