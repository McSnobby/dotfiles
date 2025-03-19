return {
    {
        "Shatur/neovim-session-manager",
        dependecies = {
            "nvim-lua/plenary.nvim"
        },
        lazy = false,
        config = function ()
            local session_config =  require("session_manager.config")
            require("session_manager").setup({
                autoload_mode = { session_config.AutoloadMode.CurrentDir, session_config.AutoloadMode.LastSession }
            })
            vim.keymap.set("n", "<leader>ws", ":SessionManager save_current_session<CR>")
            vim.keymap.set("n", "<leader>ds", ":SessionManager delete_current_dir_session<CR>")
        end
    }
}
