return {
        "Saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "1.*",
        opts = {
                enabled = function()
                        return vim.bo.buftype ~= "prompt" and vim.bo.filetype ~= "sagarename" and
                        vim.b.completion ~= false
                end,
                keymap = {
                        preset = "none",
                        ["<Tab>"] = { "select_next" },
                        ["<S-Tab>"] = { "select_prev" },
                        ["<C-Space>"] = { "accept" },
                        ["<Enter>"] = { "accept", "fallback" }
                },
                appearance = {
                        nerd_font_variant = "mono"
                },
                completion = {
                        documentation = {
                                auto_show = true,
                                auto_show_delay_ms = 0
                        },
                        ghost_text = {
                                enabled = true
                        }
                },
                signature = {
                        enabled = true,
                        window = {
                                show_documentation = true
                        }
                }
        }
}
