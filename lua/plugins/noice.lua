return {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
                lsp = {
                        ["vim.lsp.util.convert_input_to_markdown_files"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        signature = {
                                enabled = false
                        }
                },
                presets = {
                        lsp_doc_border = true
                }
        },
        dependencies = {
                "MunifTanjim/nui.nvim",
                "rcarriga/nvim-notify",
        }
}
