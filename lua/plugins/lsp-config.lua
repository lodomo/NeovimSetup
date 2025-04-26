return {
    {
        -- LSP Auto Installer
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        -- Bridge from Mason to Lspconfig
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pylsp",
                    "clangd",
                    "bashls",
                    "taplo",
                },
            })
        end,
    },

    {
        -- Connection to LSP servers
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                Lua = {
                    workspace = {
                        preloadFileSize = 700,
                        library = {
                            '$PLAYDATE_SDK/CoreLibs/',
                        },
                    },
                },
            })

            lspconfig.pylsp.setup({})
            lspconfig.clangd.setup({})
            lspconfig.bashls.setup({})

            lspconfig.ts_ls.setup {}
            lspconfig.ts_ls.setup({
                settings = {
                    typescript = {
                        format = {
                            tabSize = 2,
                            indentSize = 2,
                            convertTabsToSpaces = true,
                        },
                    },
                    javascript = {
                        format = {
                            tabSize = 2,
                            indentSize = 2,
                            convertTabsToSpaces = true,
                        },
                    },
                },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
        end,
    },
}
