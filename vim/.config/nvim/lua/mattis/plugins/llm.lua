return {
  {
    'melbaldove/llm.nvim',
    dependencies = { 'nvim-neotest/nvim-nio' },

    config = function()
      local llm = require 'llm'
      local service = 'openai'
      vim.keymap.set('n', '<leader>lp', function() llm.prompt { replace = false, service = service } end, { desc = '[l]lm [p]rompt' })
      vim.keymap.set('v', '<leader>lp', function() llm.prompt { replace = false, service = service } end, { desc = '[l]lm [p]rompt' })
      vim.keymap.set('v', '<leader>lr', function() llm.prompt { replace = true, service = service } end, { desc = '[l]lm [r]eplace' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
