local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14.0

-- Appearance
config.color_scheme = "Tokyo Night"
config.window_background_opacity = 1.0

-- Window
config.window_decorations = "RESIZE"
config.window_padding = { left = 10, right = 10, top = 10, bottom = 10 }
config.initial_cols = 120
config.initial_rows = 50

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true

return config
