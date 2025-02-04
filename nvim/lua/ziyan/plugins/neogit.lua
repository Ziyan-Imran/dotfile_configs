return {
	"NeogitOrg/neogit",
	--dir = "/home/zimran/Coding/OpenSourceContributions/neogit_og",
	tag = "v0.0.1",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		local neogit = require("neogit")

		neogit.setup({
			disable_line_numbers = false,
			disable_relative_line_numbers = false,
			kind = "split", -- opens Neogit in a split instead
			integrations = { diffview = true }, -- adds integration with diffview.nvim
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>go", "<cmd>Neogit cwd=%:p:h<cr>", { desc = "Open the Neogit Viewer" }) -- Open the Neogit Viewer
	end,
}
