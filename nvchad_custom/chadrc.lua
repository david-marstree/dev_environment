---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
  theme = "solarized_dark",
  theme_toggle = { "onedark", "one_light", "solarized_dark", "github_dark" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  tabufline = {
    show_numbers = true,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
