return {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
        keys = {
                {
                        "<leader>ff",
                        function() require("telescope.builtin").find_files() end,
                        mode = "n",
                        desc = "Find files"
                },
                {
                        "<leader>fw",
                        function() require("telescope.builtin").live_grep() end,
                        mode = "n",
                        desc = "Live grep"
                },

                {
                        "gr",
                        function() require("telescope.builtin").lsp_references() end,
                        mode = "n",
                        desc = "LSP references"
                },
                {
                        "gi",
                        function() require("telescope.builtin").lsp_implementations() end,
                        mode = "n",
                        desc = "LSP implementations"
                },
                {
                        "gd",
                        function() require("telescope.builtin").lsp_definitions() end,
                        mode = "n",
                        desc = "LSP definitions"
                },
                {
                        "<leader>q",
                        function() require("telescope.builtin").diagnostics() end,
                        mode = "n",
                        desc = "Global diagnostics"
                },

                {
                        "<leader>cm",
                        function() require("telescope.builtin").git_commits() end,
                        mode = "n",
                        desc = "Git commits"
                },
                {
                        "<leader>gt",
                        function() require("telescope.builtin").git_status() end,
                        mode = "n",
                        desc = "Git status"
                },
        }
}
