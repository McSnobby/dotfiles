return {
    {
        "askfiy/visual_studio_code",
        priority = 100,
        config = function()
            vim.cmd([[colorscheme visual_studio_code]])
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "codedark",
                component_separators = ""
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "filename" },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "filetype", "progress" },
                lualine_z = { "location" },

            },
            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "location" },
            },
            tabline = {},
            extensions = {},

        }
    },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            indent = {
                enabled = true,
                animate = {
                    enabled = false
                }
            },
            input = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            git = { enabled = true },
        },
    }
}
