-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { 'fish', '-l' }
config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'Catppuccin Frappe'

config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
}

-- and finally, return the configuration to wezterm
return config
