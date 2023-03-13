-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- Setup Instructions
require("nvim-tree").setup({
  disable_netrw = false,
  hijack_netrw = true,
  view = {
      number = true,
      relativenumber = true,
  },
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader>o", vim.cmd.NvimTreeToggle)

-- Open nvim-tree automatically when NVIM is started without file arguments
-- vim.api.nvim_create_autocmd({"BufNewFile", "BufReadPost"}, {
--    callback = function (args)
--        if vim.fn.expand "%:p" ~= "" then
--            vim.api.nvim_del_autocmd(args.id)
--            vim.cmd "noautocmd NvimTreeOpen" 
--        end
--    end,
--})


-- Define local function to open Nvim-tree when given a directory
local function open_nvim_tree(data)
    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

    if not directory then 
        return
    end

    -- change to the directory
    vim.cmd.cd(data.file)

    -- open the tree
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
