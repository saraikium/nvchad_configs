-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme_toggle = { "everforest", "everforest_light" },
  theme = "catppuccin_latte",
}

-- Plugins configs here
M.plugins = require "custom.plugins"


-- Keymaps here
M.mappings = require "custom.mappings"

return M
