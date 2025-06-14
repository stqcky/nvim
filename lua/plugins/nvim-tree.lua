return {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
                "nvim-tree/nvim-web-devicons"
        },
        opts = {

                renderer = {
                        root_folder_label = false
                },
                on_attach = function(bufnr)
                        local api = require("nvim-tree.api")

                        api.config.mappings.default_on_attach(bufnr)

                        local function opts(desc)
                                return { desc = "NvimTree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                        end

                        local git_add = function()
                                local node = api.tree.get_node_under_cursor()
                                local gs = node.git_status.file

                                -- If the current node is a directory get children status
                                if gs == nil then
                                        gs = (node.git_status.dir.direct ~= nil and node.git_status.dir.direct[1])
                                            or (node.git_status.dir.indirect ~= nil and node.git_status.dir.indirect[1])
                                end

                                -- If the file is untracked, unstaged or partially staged, we stage it
                                if gs == "??" or gs == "MM" or gs == "AM" or gs == " M" then
                                        vim.cmd("silent !git add " .. node.absolute_path)

                                        -- If the file is staged, we unstage
                                elseif gs == "M " or gs == "A " then
                                        vim.cmd("silent !git restore --staged " .. node.absolute_path)
                                end

                                api.tree.reload()
                        end

                        local function edit_or_open()
                                local node = api.tree.get_node_under_cursor()

                                if node.nodes ~= nil then
                                        -- expand or collapse folder
                                        api.node.open.edit()
                                else
                                        -- open file
                                        api.node.open.edit()
                                end
                        end

                        -- Make :bd and :q behave as usual when tree is visible
                        vim.api.nvim_create_autocmd({ 'BufEnter', 'QuitPre' }, {
                                nested = false,
                                callback = function(e)
                                        local tree = api.tree

                                        -- Nothing to do if tree is not opened
                                        if not tree.is_visible() then
                                                return
                                        end

                                        -- How many focusable windows do we have? (excluding e.g. incline status window)
                                        local winCount = 0
                                        for _, winId in ipairs(vim.api.nvim_list_wins()) do
                                                if vim.api.nvim_win_get_config(winId).focusable then
                                                        winCount = winCount + 1
                                                end
                                        end

                                        -- We want to quit and only one window besides tree is left
                                        if e.event == 'QuitPre' and winCount == 2 then
                                                vim.api.nvim_cmd({ cmd = 'qall' }, {})
                                        end

                                        -- :bd was probably issued an only tree window is left
                                        -- Behave as if tree was closed (see `:h :bd`)
                                        if e.event == 'BufEnter' and winCount == 1 then
                                                -- Required to avoid "Vim:E444: Cannot close last window"
                                                vim.defer_fn(function()
                                                        -- close nvim-tree: will go to the last buffer used before closing
                                                        tree.toggle({ find_file = true, focus = true })
                                                        -- re-open nivm-tree
                                                        tree.toggle({ find_file = true, focus = false })
                                                end, 10)
                                        end
                                end
                        })

                        vim.keymap.set("n", "l", edit_or_open, opts("Edit or open file"))
                        vim.keymap.set("n", "h", api.tree.collapse_all, opts("Collapse All"))
                        vim.keymap.set('n', 'ga', git_add, opts('Git Add'))
                end
        },
        keys = {
                {
                        "<leader>e",
                        "<cmd>NvimTreeFocus<CR>",
                        mode = "n",
                        desc = "Focus file tree"
                },
                {
                        "<C-n>",
                        "<cmd>NvimTreeToggle<CR>",
                        mode = "n",
                        desc = "Toggle file tree"
                }
        }
}
