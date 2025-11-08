return {
  "ray-x/lsp_signature.nvim",
  event = "LspAttach",
  opts = {
    bind = true,
    floating_window = true, -- show in floating window
    hint_enable = false, -- disable inline virtual text hints
    handler_opts = { border = "rounded" },
    always_trigger = true, -- attempt to trigger even if not strictly inside parens
    extra_trigger_chars = { "(", ",", ")" }, -- characters that invoke signature help
    zindex = 50,
  },
  config = function(_, opts)
    local sig = require "lsp_signature"
    sig.setup(opts)
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args) sig.on_attach(opts, args.buf) end,
    })
  end,
}
