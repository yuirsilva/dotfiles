return {
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.cmd("set background=light")
      vim.cmd('let g:gruvbox_material_background= "soft"')
      vim.cmd("let g:gruvbox_material_better_performance = 1")
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
