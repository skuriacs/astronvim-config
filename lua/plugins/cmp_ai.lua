return {
  "Saghen/blink.cmp",
  optional = true,
  opts = function(_, opts)
    opts = opts or {}
    opts.keymap = opts.keymap or {}

    -- Tab navigates completion, still jumps through snippet placeholders, otherwise falls back to Tab
    opts.keymap["<Tab>"] = { "select_next", "snippet_forward", "fallback" }
    opts.keymap["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" }

    return opts
  end,
}
