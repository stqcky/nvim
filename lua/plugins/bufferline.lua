return {
        "akinsho/bufferline.nvim",
        lazy = false,
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
                options = {
                        mode = "buffers",
                        show_close_icon = false,
                        show_buffer_close_icons = false,
                        diagnostics = "nvim_lsp",
                        diagnostics_indicator = function(count, level, diagnostics_dict, context)
                                local icon = level:match("error") and " " or " "
                                return " " .. icon .. count
                        end,
                        separator_style = "thin"
                }
        },
        keys = {
                {
                        "<Tab>",
                        "<cmd>BufferLineCycleNext<CR>",
                        mode = "n",
                        desc = "Next buffer"
                },
                {
                        "<S-Tab>",
                        "<cmd>BufferLineCyclePrev<CR>",
                        mode = "n",
                        desc = "Previous buffer"
                },
                {
                        "gb",
                        "<cmd>BufferLinePick<CR>",
                        mode = "n",
                        desc = "Pick buffer"
                }
        }
}
