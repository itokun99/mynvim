---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "vscode_dark",
  theme_toggle = { "vscode_dark", "one_light" },
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode_colored",
    separator_style = "default",
    overriden_modules = nil,
  },
  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
