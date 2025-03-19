return {
    
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function ()
require('neo-tree').setup({
    window = {
        width = 25,
    },
    event_handlers = {
        {
            event = "file_opened",
            handler = function ()
                require("neo-tree.command").execute({ action = "close" })
            end
        }
    },
    filesystem = {
        follow_current_file = {
            enabled = true,
            leave_dirs_open = false,
        }
    },
})

vim.keymap.set("n", "<leader>pv", ":Neotree toggle<CR>", {silent = true})

vim.cmd([[
highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
highlight! link NeoTreeDirectoryName NvimTreeFolderName
highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
highlight! link NeoTreeRootName NvimTreeRootFolder
highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
]])
end
}
