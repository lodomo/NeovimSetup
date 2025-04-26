local function remap(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

remap("i", "jj", "<ESC>")               -- There's jj in english or coding
remap("v", "<leader>y", [["+y]])        -- Yank to System Clipboard
remap("n", "<leader>p", [["+p]])        -- Paste from System Clipboard
remap("n", "<leader>|", ":vsplit<CR>")  -- Split Window Vertically
remap("n", "<leader>\\", ":vsplit<CR>") -- Split Window Vertically
remap("n", "<leader>-", ":split<CR>")   -- Split Window Horizontally

remap("n", "<leader>h", "<C-w>h")       -- Move to left split
remap("n", "<leader>j", "<C-w>j")       -- Move to bottom split
remap("n", "<leader>k", "<C-w>k")       -- Move to top split
remap("n", "<leader>l", "<C-w>l")       -- Move to right split

-- Plugin Remap Notes
-- 'i', Ctrl+L -- Copilot Accept Word
-- 'n', 'gf'   -- LSP Format
-- 'n', 'K'    -- LSP Hover Notes
-- 'n', 'gd'   -- LSP Go to Definition
-- 'n', 'ca'   -- LSP Code Actions
-- 'n', 'rn'   -- LSP Rename
-- 'n', 'ff'   -- Telescope Find Files
-- 'n', 'fg'   -- Telescope Live Grep
-- 'n', '  '   -- Old Files
-- 'n', 'fh'   -- Telescope Find Hidden Files
-- 'n', 'n'    -- NeoTree Pane
-- 'n', 'bf'   -- NeoTree Buffers
