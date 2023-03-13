-- Set of keybinds that I use to remap basic VIM shortcuts
-- Keybinds that affect certain applications should instead be placed in 
-- nvim/after/{plugin-name} instead.

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Lets you highlight a line and move it up/down 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Rebind the window switching
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

-- Increase/Decrease Height/Width of Current Vim Windows
vim.keymap.set("n", "<leader>wi", "30<C-W>>")
vim.keymap.set("n", "<leader>wd", "30<C-W><")
vim.keymap.set("n", "<leader>hi", "20<C-W>+")
vim.keymap.set("n", "<leader>hd", "20<C-W>-")
