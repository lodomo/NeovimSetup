return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000, -- load before all other plugins
        lazy = false,   -- make sure it loads during startup
        opts = {
            flavour = "frappe", -- latte, frappe, macchiato, mocha
            transparent_background = false,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                treesitter = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
