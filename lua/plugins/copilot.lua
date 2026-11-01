return {
  {
    "zbirenbaum/copilot.lua",
    event = { "BufReadPost", "BufNewFile" },
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