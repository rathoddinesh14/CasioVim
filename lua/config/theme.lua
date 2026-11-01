local themes = {
  matrix = {
    plugin = "iruzo/matrix-nvim",
    lualine = "matrix",
    options = {
      matrix_contrast = false,
      matrix_italic = false,
    },
  },
  ["tokyonight-moon"] = {
    plugin = "folke/tokyonight.nvim",
    lualine = "tokyonight",
  },
  habamax = {
    lualine = "auto",
  },
}

local selected = "matrix"
local theme = assert(themes[selected], "Unknown colorscheme: " .. selected)

for option, value in pairs(theme.options or {}) do
  vim.g[option] = value
end

return {
  name = selected,
  plugin = theme.plugin,
  lualine = theme.lualine,
}