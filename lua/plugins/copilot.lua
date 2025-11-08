return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      -- Make AI acceptance ergonomic and independent of Tab
      keymap = {
        accept = false,
        accept_word = false,
        accept_line = false,
      },
    },
    panel = { enabled = false },
    filetypes = { ["*"] = true },
  },
  specs = {
    -- If you previously set g.ai_accept, it's no longer needed. You can remove this spec
    -- or keep it; Copilot's own keymap will handle <C-y> directly.
  },
}
