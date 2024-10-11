-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("Iosevka", { weight = "Regular", stretch = "Normal", style = "Normal" })
--  config.font = wezterm.font("JetBrains Mono")
config.font_size = 13
local custom_catppuccin = {
	foreground = "#E8E2D9",
	background = "#1c1917",
	cursor_bg = "#E8E2D9",
	cursor_border = "#E8E2D9",
	cursor_fg = "#1c1917",
	selection_bg = "#7ee6fd",
	selection_fg = "#1c1917",
	ansi = { "#1c1917", "#fda4af", "#86efac", "#fde68a", "#22d3ee", "#D19DFF", "#4fd1c5", "#E8E2D9" },
	brights = { "#7ee6fd", "#f87171", "#D6409F", "#B48EAD", "#f9a8d4", "#f4c2c2", "#fba8c4", "#f4c2c2" },

	-- Tab bar colors
	tab_bar = {
		background = "#1c1917",
		active_tab = {
			bg_color = "#DE51A8",
			fg_color = "#1c1917",
		},
		inactive_tab = {
			bg_color = "#1c1917",
			fg_color = "#E8E2D9",
		},
		inactive_tab_hover = {
			bg_color = "#E8E2D9",
			fg_color = "#1c1917",
		},
		new_tab = {
			bg_color = "#1c1917",
			fg_color = "#E8E2D9",
		},
		new_tab_hover = {
			bg_color = "#E8E2D9",
			fg_color = "#1c1917",
		},
	},
}

-- Add the custom color scheme
config.color_schemes = {
	["catppuccin-mocha"] = custom_catppuccin,
}

-- config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
-- Apply the custom color scheme
-- config.color_scheme = "catppuccin-mocha"

-- Apply the custom color scheme
-- config.color_scheme = "catp-mocha"
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "catppuccin-frappe"
-- config.color_scheme = "catppuccin-frappe"
-- config.color_scheme = "catppuccin-macchiato"
-- config.color_scheme = "catppuccin-mocha"
-- config.color_scheme = "catppuccin-latte"
-- config.color_scheme = "Tokyo Night"
-- config.color_scheme = "tlh (terminal.sexy)"
-- config.color_scheme = "Tokyo Night (Gogh)"
-- config.color_scheme = "Tokyo Night Day"
-- config.color_scheme = "Tinacious Design (Light)"
-- config.color_scheme = "Oxocarbon Dark (Gogh)"
config.color_scheme = "carbonfox"
-- and finally, return the configuration to wezterm

config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe", "-l" }
return config
