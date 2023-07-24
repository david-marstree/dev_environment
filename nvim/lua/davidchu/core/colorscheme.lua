-- set colorscheme
-- in case it isnt installed
local colorscheme = "PaperColor"

local status, _ = pcall(vim.cmd, string.format("colorscheme %s", colorscheme))
if not status then
  print("Colorscheme " .. colorscheme .. " not found!")
  return
end
