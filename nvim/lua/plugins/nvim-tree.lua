return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        -- empty setup using defaults
        local nvimtree = require("nvim-tree")
        nvimtree.setup({
            view = {width = 30},
            filters = {
                custom = {".DS_Store"},
            },
            diagnostics = { enable = true },
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },

        })

        local keymap = vim.keymap

        -- mode, command, executuion
        -- normal mode, \t, command NvimTreeToggle <Return>
        keymap.set("n", "<leader>tr", "<cmd>NvimTreeToggle<CR>")
    end
}
