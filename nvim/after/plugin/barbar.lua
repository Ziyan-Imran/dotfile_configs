local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- Move to next buffer
map("n", "<leader>bn","<Cmd>BufferNext<CR>", opts)
map("n", "<leader>bp","<Cmd>BufferPrevious<CR>", opts)

-- Reorder buffers to previous or next
map("n", "<leader>mn","<Cmd>BufferMoveNext<CR>" , opts)
map("n", "<leader>mp", "<Cmd>BufferMovePrevious<CR>", opts)

-- Close buffer
map("n", "<leader>bc","<Cmd>BufferClose<CR>", opts)

-- Pin/Unpin buffer
map("n", "<leader>bpi", "<Cmd>BufferPin<CR>", opts)
-- Goto buffer position..
map("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)


-- Buff Close Commands
map("n", "<leader>bca", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
map("n", "<leader>bcp", "<Cmd>BufferCloseAllButPinned<CR>", opts)
map("n", "<leader>bcap", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)
map("n", "<leader>bcl", "<Cmd>BufferCloseBuffersLeft<CR>", opts)
map("n", "<leader>bcr", "<Cmd>BufferCloseBuffersRight<CR>", opts)

-- Magic buffer-picking mode
map("n", "<leader>bpm", "<Cmd>BufferPick<CR>", opts)

-- Sort automatically by --
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)

-- Set barbar"s options
require'bufferline'.setup{
    -- enable/disable animation
    animation = true,

    -- Enables/disables clickable tabs
    -- -left-click: go to buffer
    -- -middle-click: delete buffer
    clickable = true,


}
