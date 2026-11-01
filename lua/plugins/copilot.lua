return {
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    opts = {
      server = {
        type = "nodejs",
      },
      suggestion = {
        enabled = true,
        keymap = {
          accept = "<M-l>",
        },
      },
    },
  },
}