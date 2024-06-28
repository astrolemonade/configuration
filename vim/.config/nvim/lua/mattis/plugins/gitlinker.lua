return {
  {
    'ruifm/gitlinker.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('gitlinker').setup()
      vim.keymap.set('n', '<leader>gb', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', { silent = true, desc = "gitlinker: Open [g]ithub link with [b]rowser" })
      vim.keymap.set('v', '<leader>gb', '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>', { desc = "gitlinker: Open [g]ithub link with [b]rowser" })
    end,
  },
}
