local theme = require("config.theme")

return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = theme.name,
    icons = require("config.icons"),
  },
}
