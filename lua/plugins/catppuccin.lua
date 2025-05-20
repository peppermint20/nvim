return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  opts = {
    color_overrides = {

      mocha = {
        base = "#1c1917",
        blue = "#22d3ee",
        green = "#86efac",
        flamingo = "#D6409F",
        lavender = "#DE51A8",
        pink = "#f9a8d4",
        red = "#fda4af",
        maroon = "#f87171",
        mauve = "#D19DFF",
        text = "#E8E2D9",
        sky = "#7ee6fd",
        yellow = "#fde68a",
        rosewater = "#f4c2c2",
        peach = "#fba8c4",
        teal = "#4fd1c5",
      },
    },
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dashboard = true,
      flash = true,
      fzf = true,
      grug_far = true,
      gitsigns = true,
      headlines = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      noice = true,
      notify = true,
      semantic_tokens = true,
      snacks = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        if (vim.g.colors_name or ""):find("catppuccin") then
          opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
        end
      end,
    },
  },
}
