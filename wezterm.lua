local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Launch WezTerm as fullscreen window
wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

config.native_macos_fullscreen_mode = true
config.use_fancy_tab_bar = false
config.color_scheme = "tokyonight_night"
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.scrollback_lines = 3000
config.enable_wayland = false
config.check_for_updates = false

-- Font
config.font = wezterm.font({ family = "MonoLisaNerdFontCompleteMono Nerd Font" }, { weight = "Bold" })
config.font_size = 12.0
config.keys = {
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "=",
		mods = "CTRL",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "|",
		mods = "CTRL",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
