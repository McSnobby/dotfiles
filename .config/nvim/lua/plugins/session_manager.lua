return {
    {
        "Shatur/neovim-session-manager",
        dependecies = {
            "nvim-lua/plenary.nvim"
        },
        lazy = false,
        keys = {
            { "<leader>ws", "<cmd>SessionManager save_current_session<CR>" },
            { "<leader>ds", "<cmd>SessionManager delete_current_dir_session<CR>" },
            { "<leader>ls", "<cmd>SessionManager load_session<CR>" }
        },
        config = function()
            local session_config = require("session_manager.config")
            require("session_manager").setup({
                autoload_mode = { session_config.AutoloadMode.CurrentDir, session_config.AutoloadMode.LastSession }
            })
        end
    }
}
