return {
  "AstroNvim/astrocore",
  opts = {
    mappings = {
      n = {
        ["<Leader>h"] = {
          function() vim.lsp.buf.hover() end,
          desc = "Toggle signature help window",
        },
        ["<Leader>q"] = false,
      },
    },
  },
}
