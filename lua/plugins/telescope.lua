return {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
                require("telescope").setup {}

                local builtin = require("telescope.builtin")

                vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
                vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Live grep" })

                vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "LSP references" })
                vim.keymap.set("n", "gi", builtin.lsp_implementations, { desc = "LSP implementations" })
                vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "LSP definitions" })

                vim.keymap.set("n", "<leader>cm", builtin.git_commits, { desc = "Git commits" })
                vim.keymap.set("n", "<leader>gt", builtin.git_status, { desc = "Git status" })
        end
}
