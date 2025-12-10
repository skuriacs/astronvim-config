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
        ["<Leader><Leader>"] = { "<C-^>", desc = "Switch to last buffer" },
        ["<Leader>gg"] = {
          function() require("neogit").open { kind = "tab" } end,
        },
        ["<Leader>lc"] = {
          function() require("copilot.suggestion").toggle_auto_trigger() end,
        },
      },
    },
  },
}
