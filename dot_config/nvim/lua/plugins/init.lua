return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    -- {
    --     "williamboman/mason.nvim",
    --     opts = {
    --         ensure_installed = {
    --             "lua-language-server",
    --             "stylua",
    --             "clangd",
    --             "clang-format",
    --         },
    --     },
    -- },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "cpp",
                "c",
            },
        },
    },
    {
        "fedepujol/move.nvim",
        lazy = false,
        enabled = true,
        opts = function()
            require "configs.move"
        end,
    },
}
