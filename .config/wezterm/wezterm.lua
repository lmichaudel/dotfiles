local wezterm = require 'wezterm'
local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')
local config = wezterm.config_builder()


local file = io.open(wezterm.config_dir .. "/colorscheme", "r")
if file then
  config.color_scheme = file:read("*a")
  file:close()
else
  config.color_scheme = "Tokyo Night Day"
end
config.color_schemes = {
  ["gruvbox_material_dark_medium"] = {
    foreground = "#D4BE98",
    background = "#282828",
    cursor_bg = "#D4BE98",
    cursor_border = "#D4BE98",
    cursor_fg = "#282828",
    selection_bg = "#D4BE98",
    selection_fg = "#45403d",

    ansi = { "#282828", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
    brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
  }
}

config.line_height = 1.2
config.font_size = 14

config.window_decorations = "RESIZE|INTEGRATED_BUTTONS"

config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

config.window_padding = {
  left = '1cell',
  right = '1cell',
  bottom = 0,
  top = '1cell',
}

config.window_close_confirmation = 'NeverPrompt'
config.audible_bell = "Disabled"

config.keys = require("mappings")

smart_splits.apply_to_config(config, {

  direction_keys = { 'h', 'j', 'k', 'l' },

  modifiers = {
    move = 'ALT',    -- modifier to use for pane movement, e.g. CTRL+h to move left
    resize = 'CTRL', -- modifier to use for pane resize, e.g. META+h to resize to the left
  },

  log_level = 'info',
})

return config
