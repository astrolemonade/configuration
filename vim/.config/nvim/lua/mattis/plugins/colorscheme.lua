return {
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.o.background = 'dark'
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'original'
      vim.g.gruvbox_material_disable_italic_comment = true
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
