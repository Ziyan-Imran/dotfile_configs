return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		-- configure toggleterm
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[\\]], -- double backslash to open terminal
			start_in_insert = true,
			terminal_mappings = true, -- whether or not open mapping applies to opened terminals
			direction = "horizontal",
			persist_size = true,
			persist_mode = true, -- remembers the previous terminal mode
			auto_scroll = true, -- automatically scroll to the bottom on terminal output
			shell = vim.o.shell, -- default shell
			close_on_exit = true, -- close the terminal window when the process exits
		})
	end,
}
