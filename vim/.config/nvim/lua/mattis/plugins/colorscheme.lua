return {
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.o.background = 'dark'
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'original'
      vim.g.gruvbox_material_disable_italic_comment = true
      vim.g.gruvbox_material_ui_contrast = 'high'
      vim.g.gruvbox_material_visual = 'reverse'
      vim.cmd.colorscheme 'gruvbox-material'

      vim.api.nvim_create_autocmd('ColorSchemePre', {
        group = vim.api.nvim_create_augroup('gruvbox_material_background', {}),
        pattern = 'gruvbox-material',
        callback = function()
          vim.g.gruvbox_material_background = vim.o.background == 'dark' and 'hard' or 'medium'
        end,
      })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
