return {
  -- Add various themes
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "olivercederborg/poimandres.nvim" },
  {
    "folke/tokyonight.nvim",
  },
  {
    "cesaralvarod/tokyogogh.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    config = function()
      vim.g.everforest_disable_italic_comment = true
      vim.g.everforest_enable_italic = false
    end,
  },
  {
    "Shatur/neovim-ayu",
  },
  {
    "cpea2506/one_monokai.nvim",
    transparent = true,
    colors = {},
    highlights = function(colors)
      return {}
    end,
    italics = true,
  },

  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "everforest",
      -- colorscheme = "asuna_dark",
      -- colorscheme = "ayu-mirage",
      -- colorscheme = "everforest",
      colorscheme = "one_monokai",
      -- colorscheme = "tokyonight",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "catppuccin-latte",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "tokyonight-day",
      -- colorscheme = "nightfox",
    },
  },
}
