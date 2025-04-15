require("ziyan.core")
require("ziyan.lazy")

-- Setup neovide settings on initializing
if vim.g.neovide then
	-- General Appearance
	vim.opt.linespace = 0
	vim.g.neovide_scale_factor = 1.0

	-- Padding
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0

	-- Shadows and Transparancy
	vim.g.neovide_floating_shadow = true
	vim.g.neovide_floating_z_height = 10
	vim.g.neovide_light_angle_degrees = 45
	vim.g.neovide_light_radius = 5
	vim.g.neovide_transparency = 1.0

	-- Cursor settings
	vim.g.neovide_cursor_animation_length = 0.08
	vim.g.neovide_cursor_trail_size = 0.5
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.g.neovide_cursor_animate_command_line = true
	vim.g.neovide_cursor_smooth_blink = false
	vim.g.neovide_cursor_vfx_mode = "ripple"
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.5
	vim.g.neovide_cursor_vfx_particle_density = 1.5
end
