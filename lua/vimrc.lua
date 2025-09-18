-- VIM Configuration File
-- Author: Lodomo.dev
-- License: MIT

-- Set Number Column
vim.opt.number = true               -- Show Line Numbers
vim.opt.relativenumber = true       -- Show Relative Line Numbers

vim.opt.tabstop = 4                 -- Sets width of tab when read vim.opt.softtabstop = 4             -- Sets width of tab when pressed
vim.opt.shiftwidth = 4              -- How far >> and << move text
vim.opt.expandtab = true            -- Expand Tabs to Spaces

vim.opt.swapfile = false            -- No Swap Files
vim.opt.backup = false              -- No Backup Files
vim.opt.hlsearch = false            -- Do not highlight search
vim.opt.incsearch = true            -- Incremental Search (search as you type)
vim.opt.termguicolors = true        -- True Color Support
vim.opt.scrolloff = 8               -- Scroll Offset, 8 lines from top/bottom
vim.opt.updatetime = 50             -- Update Time in Milliseconds
vim.opt.colorcolumn = "81"          -- Column to highlight at 80

vim.opt.autoindent = true           -- Auto Indent (Indent to the line above)
vim.opt.smartindent = true          -- Smart Indent (Context based)
vim.cmd("set formatoptions+=cro")   -- Keep Line Formatting
vim.opt.wrap = false                -- No Wrap

vim.opt.syntax = "on"               -- Enable Syntax Highlighting

-- Key Mappings
vim.g.mapleader = " "               -- Leader Key, Space

-- Set Tab Width for web-based languages since they're so goddamn verbose
local two_tab_types = { "typescript", "javascript", "html", "css", "Rmd" }
for _, file_type in ipairs(two_tab_types) do
    vim.api.nvim_create_autocmd("FileType", {
        pattern = file_type,
        callback = function()
            vim.opt_local.tabstop = 2
            vim.opt_local.shiftwidth = 2
            vim.opt_local.expandtab = true
        end,
    })
end

vim.keymap.set('n', '<leader>q', [[:%s/\n/ /g<CR>:%s/  */ /g<CR>]])

vim.diagnostic.config({
    virtual_text = {
    spacing = 2,
    prefix = "●",
    severity_limit = 'Warning',
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Define a macro for "@p" in normal mode
vim.api.nvim_set_keymap("n", "@p", "i```{python}<CR>```<Esc>2ko", { noremap = true, silent = true, desc = "Insert Python code fence and go into insert mode" })
