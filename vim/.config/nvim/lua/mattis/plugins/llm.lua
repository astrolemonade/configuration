return {
  {
    'melbaldove/llm.nvim',
    dependencies = { 'nvim-neotest/nvim-nio' },

    config = function()
      local llm = require 'llm'
      local service = 'openai'
      vim.keymap.set('n', '<leader>lp', function()
        llm.prompt { replace = false, service = service }
      end, { desc = 'llm: [l]lm [p]rompt' })
      vim.keymap.set('v', '<leader>lp', function()
        llm.prompt { replace = false, service = service }
      end, { desc = 'llm: [l]lm [p]rompt' })
      vim.keymap.set('v', '<leader>lr', function()
        llm.prompt { replace = true, service = service }
      end, { desc = 'llm: [l]lm [r]eplace' })
    end,
  },
}
