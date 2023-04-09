-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine catppuccin mocha theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- new colors for theme
local new_colors = {
	blue = "#64E3C7",
	green = "#7FE38F",
	violet = "#F09EDB",
	yellow = "#E7E59A",
	black = "#11111B",
}

-- change nightlfy theme colors
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.violet
lualine_nightfly.visual.a.bg = new_colors.green
lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = lualine_nightfly,
	},
})
