local theme = require("config.theme")
local plugins = {}

if theme.plugin then
  plugins[#plugins + 1] = {
    theme.plugin,
    lazy = false,
    priority = 1000,
  }
end

plugins[#plugins + 1] = {
  "nvim-lualine/lualine.nvim",
  optional = true,
  opts = {
    options = {
      theme = theme.lualine,
    },
  },
}

return plugins