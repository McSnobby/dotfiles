return {
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        config = function()
            require("vscode").setup({
                transparent = false,
                disable_nvimtree_bg = false,
            })
            vim.cmd.colorscheme "vscode"
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        opts = {
            options = {
                theme = "vscode",
                component_separators = ""
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "filename" },
                lualine_c = { "diagnostics" },
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
}
