return {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = {
                "nvim-tree/nvim-web-devicons"
        },
        config = function()
                require("nvim-tree").setup {}

                vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>")
                vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
        end
}
