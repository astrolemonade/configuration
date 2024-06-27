return {
  {
    'jpalardy/vim-slime',
    config = function()
      vim.g.slime_target = 'tmux'
      vim.g.slime_default_config = { socket_name = 'default', target_pane = '{last}' }

      vim.keymap.set('n', '<leader>rs', ':SlimeSend<CR>', { desc = '[r]epl [s]end' })
      vim.keymap.set('x', '<leader>rs', ':SlimeSend<CR>', { desc = '[r]epl [s]end' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
