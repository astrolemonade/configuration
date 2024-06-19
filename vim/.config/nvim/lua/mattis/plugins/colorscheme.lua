return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    init = function()
      require('gruvbox').setup {
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
      }
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
