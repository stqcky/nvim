return {
        "numToStr/Comment.nvim",
        config = function()
                require("Comment")

                vim.keymap.set("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true})
                vim.keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true})
        end
}
