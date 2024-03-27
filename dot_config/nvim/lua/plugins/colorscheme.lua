return {

  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "loctvl842/monokai-pro.nvim" },
  { "folke/tokyonight.nvim" },
  -- Configure lazyvim to load proper theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",

      -- NOTE: Some of my favorites:
      -- colorscheme = "monokai-pro-classic",
      -- colorscheme = "monokai-pro-ristretto",
      -- colorscheme = "gruvbox",
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "tokyonight-night",
      --
    },
  },
}
