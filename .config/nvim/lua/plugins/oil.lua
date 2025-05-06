return {
    {
        "stevearc/oil.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        lazy = false,
        init = function()
            vim.api.nvim_create_autocmd("User", {
                pattern = "MiniFilesActionRename",
                callback = function(event)
                    require("Snacks.rename").on_rename_file(event.data.from, event.data.to)
                end
            })
        end,
        keys = {
            { "-", "<CMD>Oil<CR>", desc = "Open parent directory" }
        },
        ---@module "oil"
        ---@type oil.SetupOts
        opts = {
            columns = {
                "icon",
                "size",
                "mtime",
            },
            view_options = {
                show_hidden = true,
                is_always_hidden = function(name)
                    return require("util").has_value({ ".git" }, name)
                end
            }
        },
    },
}
