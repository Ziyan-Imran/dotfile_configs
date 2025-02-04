return {
	-- "bluz71/vim-nightfly-colors",
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.g.sonokai_enable_italic = true
		vim.g.sonokai_style = "default"
		vim.cmd([[colorscheme sonokai]])
	end,
}
