local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.native_macos_fullscreen_mode = true
config.use_fancy_tab_bar = false
config.color_scheme = "tokyonight_night"
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 11
config.default_cursor_style = "SteadyBlock"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_rate = 0
config.max_fps = 120
config.window_padding = {
	left = 2,
	right = 2,
	top = 15,
	bottom = 0,
}
-- config.scrollback_lines = 3000
config.check_for_updates = false
config.font = wezterm.font({ family = "Liga MonoLisaNerdFontCompleteMonoNer" })
config.font_size = 13.0
config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
