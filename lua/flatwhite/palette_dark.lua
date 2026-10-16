-- Dark mode palette for flatwhite
-- Preserves the signature "colored background highlights" with dark-tinted backgrounds

local base1 = "#c5bdb2"
local base2 = "#8a7e6e"
local base3 = "#56504a"
local base4 = "#3d3a33"
local base5 = "#33302a"
local base6 = "#2a2722"
local base7 = "#22201b"
local accent = "#8b75ff"

local yellow_text = "#b8b47e"
local yellow_text_sec = "#a9994c"
local yellow_bg = "#33312a"

local orange_text = "#cba97c"
local orange_text_sec = "#b8955f"
local orange_bg = "#362e24"

local green_text = "#b5c67e"
local green_text_sec = "#92a86e"
local green_bg = "#2d3328"

local teal_text = "#7ec4ad"
local teal_text_sec = "#6fa893"
local teal_bg = "#233330"

local blue_text = "#92a8c8"
local blue_text_sec = "#8096b8"
local blue_bg = "#282e3a"

local purple_text = "#b98fb9"
local purple_text_sec = "#a87da8"
local purple_bg = "#332835"

local red_text = "#c88282"
local red_text_sec = "#b86e6e"
local red_bg = "#382828"

local diff_add = "#2db448"
local diff_change = "#f2a60d"
local diff_change_dark = "#c49420"
local diff_delete = "#ff1414"
local diff_renamed = "#52aeff"

---@class Palette
return {
   base1 = base1,
   base2 = base2,
   base3 = base3,
   base4 = base4,
   base5 = base5,
   base6 = base6,
   base7 = base7,
   accent = accent,
   yellow_text = yellow_text,
   yellow_text_sec = yellow_text_sec,
   yellow_bg = yellow_bg,
   orange_text = orange_text,
   orange_text_sec = orange_text_sec,
   orange_bg = orange_bg,
   green_text = green_text,
   green_text_sec = green_text_sec,
   green_bg = green_bg,
   teal_text = teal_text,
   teal_text_sec = teal_text_sec,
   teal_bg = teal_bg,
   blue_text = blue_text,
   blue_text_sec = blue_text_sec,
   blue_bg = blue_bg,
   purple_text = purple_text,
   purple_text_sec = purple_text_sec,
   purple_bg = purple_bg,
   red_text = red_text,
   red_text_sec = red_text_sec,
   red_bg = red_bg,
   diff_add = diff_add,
   diff_change = diff_change,
   diff_change_dark = diff_change_dark,
   diff_delete = diff_delete,
   diff_renamed = diff_renamed,
   bg = base7,
   fg = base1,
   fw_base = { fg = base1 },
   fw_base_bold = { fg = base1, bold = true },
   selection = base4,
   comment = base2,
   red = red_text_sec,
   orange = orange_text_sec,
   yellow = base2,
   green = green_text_sec,
   purple = purple_text_sec,
   cyan = teal_text_sec,
   pink = purple_text_sec,
   bright_red = red_text_sec,
   bright_green = green_text_sec,
   bright_yellow = orange_text_sec,
   bright_blue = blue_text_sec,
   bright_magenta = purple_text_sec,
   bright_cyan = teal_text_sec,
   bright_white = "#e8e4de",
   menu = base5,
   visual = base4,
   gutter_fg = "#6b6560",
   nontext = "#4a453f",
   white = base1,
   black = base7,
   fw_green = { fg = green_text, bg = green_bg },
   fw_teal = { fg = teal_text, bg = teal_bg },
   fw_blue = { fg = blue_text, bg = blue_bg },
   fw_orange = { fg = orange_text, bg = orange_bg },
   fw_purple = { fg = purple_text, bg = purple_bg },
   fw_yellow = { fg = yellow_text, bg = yellow_bg },
   fw_red = { fg = red_text, bg = red_bg },
}
