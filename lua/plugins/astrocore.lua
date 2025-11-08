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
        ["<C-u>"] = { "<C-u>zz", desc = "Scroll up and center" },
        ["<C-d>"] = { "<C-d>zz", desc = "Scroll down and center" },
      },
    },
  },
}
