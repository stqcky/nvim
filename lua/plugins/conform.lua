return {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        opts = {
                formatters_by_ft = {
                        lua = { "stylua" },
                        rust = { "rustfmt", "fallback" }
                },
                format_on_save = {
                        timeout_ms = 500,
                        lsp_format = "fallback"
                }
        },
        keys = {
                {
                        "<leader>fm",
                        function()
                                require("conform").format({ async = true })
                        end,
                        mode = "",
                        desc = "Format buffer",
                }
        },
}
