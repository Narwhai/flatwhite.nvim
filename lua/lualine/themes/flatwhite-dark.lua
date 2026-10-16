local colors = require("flatwhite.palette_dark")
local flatwhite = require("flatwhite")
local configs = flatwhite.configs()

local bg = configs.lualine_bg_color or colors.base4

local normal = {
	a = { fg = colors.base7, bg = colors.base2, gui = "bold" },
	b = { fg = colors.base2, bg = bg },
	c = { fg = colors.fg, bg = bg },
}

local command = {
	a = { fg = colors.teal_bg, bg = colors.teal_text, gui = "bold" },
	b = { fg = colors.teal_text_sec, bg = bg },
}

local visual = {
	a = { fg = colors.purple_bg, bg = colors.purple_text, gui = "bold" },
	b = { fg = colors.purple_text_sec, bg = bg },
}

local inactive = {
	a = { fg = colors.fg, bg = colors.base5, gui = "bold" },
	b = { fg = colors.base2, bg = colors.base6 },
	c = { fg = colors.base2, bg = colors.base5 },
}

local replace = {
	a = { fg = colors.base7, bg = colors.red_text_sec, gui = "bold" },
	b = { fg = colors.red_text_sec, bg = bg },
	c = { fg = colors.fg, bg = bg },
}

local insert = {
	a = { fg = colors.green_bg, bg = colors.green_text, gui = "bold" },
	b = { fg = colors.green_text_sec, bg = bg },
	c = { fg = colors.fg, bg = bg },
}

return {
	normal = normal,
	command = command,
	visual = visual,
	inactive = inactive,
	replace = replace,
	insert = insert,
}
