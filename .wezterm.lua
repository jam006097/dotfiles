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

wezterm.on("gui-startup", function()
  local screen = wezterm.gui.screens().active
  local ratio = 0.90
  local width = screen.width * ratio
  local height = screen.height * ratio
  local x = (screen.width - width) / 2
  local y = (screen.height - height) / 2
  local _, _, window = wezterm.mux.spawn_window({})
  window:gui_window():set_position(x, y)
  window:gui_window():set_inner_size(width, height)
end)

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true

return config
