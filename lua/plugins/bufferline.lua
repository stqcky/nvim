return {
        "akinsho/bufferline.nvim",
        lazy = false,
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
                options = {
                        mode = "buffers",
                        show_close_icon = false,
                        show_buffer_close_icons = false
                }
        },
        keys = {
                {
                        "<Tab>",
                        "<cmd>BufferLineCycleNext<CR>",
                        mode = "n",
                        desc = "Next tab"
                },
                {
                        "<S-Tab>",
                        "<cmd>BufferLineCyclePrev<CR>",
                        mode = "n",
                        desc = "Previous tab"
                },
        }
}
