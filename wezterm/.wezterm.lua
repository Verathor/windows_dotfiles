local wezterm = require("wezterm")

local config = {}

-- Set default shell
config.default_prog = { "pwsh.exe", "-NoLogo" }

-- Set font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12 -- optional, adjust as you like
config.keys = {
	-- Move to the tab on the left
	{ key = "h", mods = "ALT", action = wezterm.action({ ActivateTabRelative = -1 }) },
	-- Move to the tab on the right
	{ key = "l", mods = "ALT", action = wezterm.action({ ActivateTabRelative = 1 }) },
	-- Spawn a new tab
	{ key = "t", mods = "ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	-- Fix Pasting
	{ key = "v", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
	{ key = "q", mods = "ALT", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
}

return config
