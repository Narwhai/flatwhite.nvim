-- Flexoki Dark palette
-- Based on https://stephango.com/flexoki
-- Uses 400-level accents for syntax text, 900-level tints for backgrounds

local base1 = "#CECDC3"   -- base-200 (foreground)
local base2 = "#878580"   -- base-500 (comments)
local base3 = "#575653"   -- base-700 (borders)
local base4 = "#343331"   -- base-850 (selection, cursorline)
local base5 = "#282726"   -- base-900
local base6 = "#1C1B1A"   -- base-950 (float bg, sidebars)
local base7 = "#100F0F"   -- black (main bg)
local accent = "#8B7EC8"   -- purple-400

local yellow_text = "#D0A215"   -- yellow-400
local yellow_text_sec = "#D0A215"
local yellow_bg = "#3A2D04"    -- yellow-900

local orange_text = "#DA702C"   -- orange-400
local orange_text_sec = "#DA702C"
local orange_bg = "#40200D"    -- orange-900

local green_text = "#879A39"    -- green-400
local green_text_sec = "#879A39"
local green_bg = "#252D09"     -- green-900

local teal_text = "#3AA99F"    -- cyan-400
local teal_text_sec = "#3AA99F"
local teal_bg = "#122F2C"     -- cyan-900

local blue_text = "#4385BE"    -- blue-400
local blue_text_sec = "#4385BE"
local blue_bg = "#12253B"     -- blue-900

local purple_text = "#8B7EC8"  -- purple-400
local purple_text_sec = "#8B7EC8"
local purple_bg = "#261C39"   -- purple-900

local red_text = "#D14D41"     -- red-400
local red_text_sec = "#D14D41"
local red_bg = "#3E1715"      -- red-900

local magenta_text = "#CE5D97" -- magenta-400
local magenta_text_sec = "#CE5D97"
local magenta_bg = "#39172B"  -- magenta-900

local diff_add = "#879A39"
local diff_change = "#D0A215"
local diff_change_dark = "#BE9207"
local diff_delete = "#D14D41"
local diff_renamed = "#4385BE"

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
   magenta_text = magenta_text,
   magenta_text_sec = magenta_text_sec,
   magenta_bg = magenta_bg,
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
   red = red_text,
   orange = orange_text,
   yellow = yellow_text,
   green = green_text,
   purple = purple_text,
   cyan = teal_text,
   pink = magenta_text,
   bright_red = red_text,
   bright_green = green_text,
   bright_yellow = orange_text,
   bright_blue = blue_text,
   bright_magenta = magenta_text,
   bright_cyan = teal_text,
   bright_white = "#FFFCF0",
   menu = base5,
   visual = base4,
   gutter_fg = "#575653",    -- base-700
   nontext = "#403E3C",      -- base-800
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
