return {
	"ellisonleao/glow.nvim",
	cmd = "Glow",
	config = function()
		local keymap = vim.keymap -- for conciseness

		-- Keybinds
		keymap.set("n", "<leader>GL", "<cmd>Glow<cr>", { desc = "Open the glow markdown preview" })
		keymap.set("n", "<leader>GLX", "<cmd>Glow!<cr>", { desc = "Close the glow markdown preview" })
	end,
}
