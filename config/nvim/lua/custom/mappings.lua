local set = vim.keymap.set

--  mapping

set({ "n", "x" }, ";", ":")

-- Remap Ctrl+a to move to the end of the line and enter insert mode
vim.api.nvim_set_keymap('i', '<C-a>', '<C-o>A', { noremap = true, silent = true })
-- Remap Ctrl+r to move right
vim.api.nvim_set_keymap('i', '<C-r>', '<Right>', { noremap = true, silent = true })
