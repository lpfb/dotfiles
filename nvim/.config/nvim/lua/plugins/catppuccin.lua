return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
      vim.cmd "highlight Normal guibg=none ctermbg=none"
      vim.cmd "highlight NormalNC guibg=none ctermbg=none"
    end
  }
}
