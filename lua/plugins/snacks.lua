local function matrix_line(text)
  return string.format("| %-33s|", text)
end

local matrix_header = {
  "+----------------------------------+",
  matrix_line("M A T R I X // 01"),
  matrix_line("CODE STREAM ACTIVE"),
  matrix_line("01001101 01000001 01010100"),
  "+----------------------------------+",
}
-- Snacks
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    local keys = {
      { icon = "F", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
      { icon = "N", key = "n", desc = "New File", action = ":ene | startinsert" },
      { icon = "G", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
      { icon = "R", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
      {
        icon = "C",
        key = "c",
        desc = "Config",
        action = ":lua Snacks.explorer.open({ cwd = vim.fn.stdpath('config') })",
      },
      { icon = "S", key = "s", desc = "Restore Session", section = "session" },
      { icon = "E", key = "e", desc = "LazyVim Extras", action = ":LazyExtra" },
      { icon = "L", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
      { icon = "Q", key = "q", desc = "Quit", action = ":qa" },
    }
    if os.getenv("TERMUX_VERSION") then
      table.insert(keys, 7, {
        icon = "T",
        key = "tm",
        desc = "Mason FixShebang",
        action = ":lua require('termux').MasonFixShebang()",
      })
    end
    opts.dashboard = {
      enabled = true,
      width = 36,
      rows = nil,
      preset = {
        keys = keys,
        header = table.concat(matrix_header, "\n"),
      },
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
        header = {
          -- See more hl by :FzfLua highlights
          hl = "SnacksIndent6",
        },
      },
      sections = {
        { padding = 1 },
        { section = "header" },
        { icon = "K", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = "R", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = "P", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
    }
    return opts
  end,
}
