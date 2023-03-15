local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- Move to next buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferNext)
vim.keymap.set("n", "<leader>bp", vim.cmd.BufferPrevious)

-- Reorder buffers to previous or next
vim.keymap.set("n", "<leader>mn", vim.cmd.BufferMoveNext)
vim.keymap.set("n", "<leader>mp", vim.cmd.BufferMovePrevious)

-- Close buffer
vim.keymap.set("n", "<leader>bc", vim.cmd.BufferClose)

-- Goto buffer position..
map('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>b5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>b0', '<Cmd>BufferLast<CR>', opts)
