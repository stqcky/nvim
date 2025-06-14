return {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",
        opts = {
                lightbulb = {
                        enable = false
                },
                rename = {
                        auto_save = true
                },
                ui = {
                        code_action = ""
                }
        },
        dependencies = {
                "nvim-treesitter/nvim-treesitter",
                "nvim-tree/nvim-web-devicons"
        },
        keys = {
                {
                        "<leader>ca",
                        "<cmd>Lspsaga code_action<cr>",
                        mode = "n",
                        desc = "Code actions"
                },
                -- {
                --         "K",
                --         "<cmd>Lspsaga hover_doc<cr>",
                --         mode = "n",
                --         desc = "Hover"
                -- },
                {
                        "<leader>ra",
                        "<cmd>Lspsaga rename<cr>",
                        mode = "n",
                        desc = "LSP Rename"
                },
        }
}
