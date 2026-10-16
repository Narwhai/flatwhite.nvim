local o = vim.o
local g = vim.g
local cmd = vim.cmd
local nvim_set_hl = vim.api.nvim_set_hl
local tbl_deep_extend = vim.tbl_deep_extend

---@class DefaultConfig
---@field italic_comment boolean
---@field transparent_bg boolean
---@field show_end_of_buffer boolean
---@field lualine_bg_color string?
---@field variant "light"|"dark"|"flexoki-light"|"flexoki-dark"
---@field colors Palette
---@field overrides table<string, Highlight>
local DEFAULT_CONFIG = {
   italic_comment = true,
   bold_function = true,
   transparent_bg = false,
   show_end_of_buffer = false,
   lualine_bg_color = nil,
   variant = "light",
   colors = require("flatwhite.palette"),
   overrides = {},
}

local TRANSPARENTS = {
   "Normal",
   "SignColumn",
   "NvimTreeNormal",
   "NvimTreeVertSplit",
}

local function apply_term_colors(colors)
   g.terminal_color_0 = colors.black
   g.terminal_color_1 = colors.red
   g.terminal_color_2 = colors.green
   g.terminal_color_3 = colors.yellow
   g.terminal_color_4 = colors.purple
   g.terminal_color_5 = colors.pink
   g.terminal_color_6 = colors.cyan
   g.terminal_color_7 = colors.white
   g.terminal_color_8 = colors.selection
   g.terminal_color_9 = colors.bright_red
   g.terminal_color_10 = colors.bright_green
   g.terminal_color_11 = colors.bright_yellow
   g.terminal_color_12 = colors.bright_blue
   g.terminal_color_13 = colors.bright_magenta
   g.terminal_color_14 = colors.bright_cyan
   g.terminal_color_15 = colors.bright_white
   g.terminal_color_background = colors.bg
   g.terminal_color_foreground = colors.fg
end

---apply flatwhite colorscheme
---@param configs DefaultConfig
local function apply(configs)
   local colors = configs.colors
   apply_term_colors(colors)
   local groups = require("flatwhite.groups").setup(configs)

   -- apply transparents
   if configs.transparent_bg then
      for _, group in ipairs(TRANSPARENTS) do
         groups[group].bg = nil
      end
   end

   for group, setting in pairs(configs.overrides) do
      groups[group] = setting
   end

   -- set defined highlights
   for group, setting in pairs(groups) do
      nvim_set_hl(0, group, setting)
   end
end

local local_configs = DEFAULT_CONFIG

--- Resolve the palette based on variant
---@param variant "light"|"dark"|"flexoki-light"|"flexoki-dark"
---@return Palette
local function resolve_palette(variant)
   local palettes = {
      light = "flatwhite.palette",
      dark = "flatwhite.palette_dark",
      ["flexoki-light"] = "flatwhite.palette_flexoki_light",
      ["flexoki-dark"] = "flatwhite.palette_flexoki_dark",
   }
   return require(palettes[variant] or "flatwhite.palette")
end

--- Determine if a variant is dark
---@param variant string
---@return boolean
local function is_dark(variant)
   return variant == "dark" or variant == "flexoki-dark"
end

---setup flatwhite colorscheme
---@param configs DefaultConfig?
local function setup(configs)
   if type(configs) == "table" then
      local_configs = tbl_deep_extend("force", DEFAULT_CONFIG, configs) --[[@as DefaultConfig]]
      -- If user set variant but didn't override colors, resolve palette from variant
      if configs.variant and not configs.colors then
         local_configs.colors = resolve_palette(local_configs.variant)
      end
   end
end

---load flatwhite colorscheme
---@param variant "light"|"dark"|"flexoki-light"|"flexoki-dark"|nil
local function load(variant)
   if vim.version().minor < 7 then
      vim.notify_once("flatwhite.nvim: you must use neovim 0.7 or higher")
      return
   end

   -- If variant is passed directly (e.g. from colors/*.lua), apply it
   if variant then
      local_configs.variant = variant
      local_configs.colors = resolve_palette(variant)
   end

   -- reset colors
   if g.colors_name then
      cmd("hi clear")
   end

   if vim.fn.exists("syntax_on") then
      cmd("syntax reset")
   end

   o.background = is_dark(local_configs.variant) and "dark" or "light"
   o.termguicolors = true
   g.colors_name = local_configs.variant == "light" and "flatwhite" or local_configs.variant == "dark" and "flatwhite-dark" or local_configs.variant

   apply(local_configs)
end

return {
   load = load,
   setup = setup,
   configs = function()
      return local_configs
   end,
   colors = function()
      return local_configs.colors
   end,
}
