local node_command = vim.fn.exepath("node")
if node_command == "" and os.getenv("TERMUX_VERSION") then
  node_command = (os.getenv("PREFIX") or "/data/data/com.termux/files/usr") .. "/bin/node"
end
if node_command == "" then
  node_command = "node"
end

return {
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    opts = {
      copilot_node_command = node_command,
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