-- Minimal init for testing flatwhite/flexoki themes
-- Usage: nvim -u test_init.lua some_file.lua

vim.opt.runtimepath:prepend(vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h"))

vim.g.mapleader = " "

local variants = { "flatwhite", "flatwhite-dark", "flexoki-light", "flexoki-dark" }
local current = 1

-- Load first variant
vim.cmd("colorscheme " .. variants[current])

-- <leader>tv to cycle through all variants
vim.keymap.set("n", "<leader>tv", function()
   current = current % #variants + 1
   vim.cmd("colorscheme " .. variants[current])
   print("Theme: " .. variants[current])
end, { desc = "Cycle flatwhite/flexoki variants" })

-- <leader>tl / <leader>td for quick light/dark toggle within current family
vim.keymap.set("n", "<leader>tl", function()
   if vim.g.colors_name and vim.g.colors_name:match("flexoki") then
      vim.cmd("colorscheme flexoki-light")
      print("Theme: flexoki-light")
   else
      vim.cmd("colorscheme flatwhite")
      print("Theme: flatwhite")
   end
end, { desc = "Switch to light variant" })

vim.keymap.set("n", "<leader>td", function()
   if vim.g.colors_name and vim.g.colors_name:match("flexoki") then
      vim.cmd("colorscheme flexoki-dark")
      print("Theme: flexoki-dark")
   else
      vim.cmd("colorscheme flatwhite-dark")
      print("Theme: flatwhite-dark")
   end
end, { desc = "Switch to dark variant" })
