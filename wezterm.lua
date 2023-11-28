-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- This table will hold the configuration.
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

-- This is where you actually apply your config choices
config.use_fancy_tab_bar = false

-- For example, changing the color scheme:
config.color_scheme = "tokyonight_night"

-- Launch TMUX with the last session
config.default_prog = { "/opt/homebrew/bin/tmux", "attach-session" }

config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

-- Font
config.font = wezterm.font({ family = "JetBrainsMono NF" }, { weight = "ExtraBold" })
config.font_size = 13.0

-- Key Binding Config
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

-- and finally, return the configuration to wezterm
return config
