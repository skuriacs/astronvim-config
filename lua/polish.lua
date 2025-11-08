-- Ensure this loads after plugins (e.g., in 'polish' or a late event)
vim.keymap.set("i", "<C-l>", function()
  local ok, s = pcall(require, "copilot.suggestion")
  if ok and s.is_visible() then
    s.accept()
    return ""
  end
  return "" -- fall back to normal <C-y> behavior
end, { expr = true, silent = true })
