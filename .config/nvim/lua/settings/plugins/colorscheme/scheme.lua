return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  lazy = false,
  priority = 999,
  config = function()
    require("tokyonight").setup({})
    vim.cmd.colorscheme "tokyonight-day"
  end,
}
