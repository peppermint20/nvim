return {
  -- Add various themes
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "EdenEast/nightfox.nvim" },

  -- Add and configure catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
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
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
