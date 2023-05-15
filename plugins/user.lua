return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    {"github/copilot.vim", lazy = false}, "tomasiser/vim-code-dark", {
        "folke/todo-comments.nvim",
        dependenies = {"nvim-lua/plenary.nvim"},
        config = function() require("todo-comments").setup {} end,
        event = "BufRead"
    }, {
        "scalameta/nvim-metals",
        config = function() require("user.metals").config() end,
        dependenies = {"nvim-lua/plenary.nvim", "mfussenegger/nvim-dap"}
    }, {
        "folke/todo-comments.nvim",
        dependenies = {"nvim-lua/plenary.nvim"},
        config = function() require("todo-comments").setup {} end,
        event = "BufRead"
    }, {
        "pwntester/octo.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons"
        },
        lazy = false,
        config = function()
            require("octo").setup({
                default_remote = {"upstream", "origin"} -- order to try remotes
            })
        end
    }, {"sindrets/diffview.nvim", event = "BufRead"}, {
        "f-person/git-blame.nvim",
        event = "BufRead",
        config = function()
            vim.cmd [[
          highlight default link gitblame SpecialComment
        ]]
            vim.g.gitblame_enabled = 0
        end
    },
    {"hrsh7th/cmp-cmdline", dependencies = {"hrsh7th/nvim-cmp"}, lazy = false}
}
