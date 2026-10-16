-- Flexoki Light palette
-- Based on https://stephango.com/flexoki
-- Uses 600-level accents for syntax text, 50-level tints for backgrounds

local base1 = "#1C1B1A"   -- base-950 (foreground)
local base2 = "#878580"   -- base-500 (comments)
local base3 = "#B7B5AC"   -- base-300 (borders)
local base4 = "#DAD8CE"   -- base-150 (selection, cursorline)
local base5 = "#E6E4D9"   -- base-100
local base6 = "#F2F0E5"   -- base-50 (float bg, sidebars)
local base7 = "#FFFCF0"   -- paper (main bg)
local accent = "#5E409D"   -- purple-600

local yellow_text = "#AD8301"   -- yellow-600
local yellow_text_sec = "#AD8301"
local yellow_bg = "#FAEEC6"    -- yellow-50

local orange_text = "#BC5215"   -- orange-600
local orange_text_sec = "#BC5215"
local orange_bg = "#FFE7CE"    -- orange-50

local green_text = "#66800B"    -- green-600
local green_text_sec = "#66800B"
local green_bg = "#EDEECF"     -- green-50

local teal_text = "#24837B"    -- cyan-600
local teal_text_sec = "#24837B"
local teal_bg = "#DDF1E4"     -- cyan-50

local blue_text = "#205EA6"    -- blue-600
local blue_text_sec = "#205EA6"
local blue_bg = "#E1ECEB"     -- blue-50

local purple_text = "#5E409D"  -- purple-600
local purple_text_sec = "#5E409D"
local purple_bg = "#F0EAEC"   -- purple-50

local red_text = "#AF3029"     -- red-600
local red_text_sec = "#AF3029"
local red_bg = "#FFE1D5"      -- red-50

local magenta_text = "#A02F6F" -- magenta-600
local magenta_text_sec = "#A02F6F"
local magenta_bg = "#FEE4E5"  -- magenta-50

local diff_add = "#66800B"
local diff_change = "#AD8301"
local diff_change_dark = "#8E6B01"
local diff_delete = "#AF3029"
local diff_renamed = "#205EA6"

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
   bright_white = "#100F0F",
   menu = base5,
   visual = base4,
   gutter_fg = "#6F6E69",    -- base-600
   nontext = "#B7B5AC",      -- base-300
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
