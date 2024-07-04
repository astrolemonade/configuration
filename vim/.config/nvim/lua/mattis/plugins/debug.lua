return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',

    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    'mfussenegger/nvim-dap-python',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      automatic_installation = true,
      handlers = {},
    }

    vim.keymap.set('n', '<F5>', dap.continue, { desc = 'debug: Start/Continue' })
    vim.keymap.set('n', '<leader><F5>', require('dap.ext.vscode').load_launchjs, { desc = 'debug: Load debug config' })
    vim.keymap.set('n', '<F6>', dap.terminate, { desc = 'debug: Terminate' })
    vim.keymap.set('n', '<F1>', dap.step_into, { desc = 'debug: Step Into' })
    vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'debug: Step Over' })
    vim.keymap.set('n', '<F3>', dap.step_out, { desc = 'debug: Step Out' })
    vim.keymap.set('n', '<space>?', function()
      ---@diagnostic disable-next-line: missing-fields
      dapui.eval(nil, { enter = true })
    end, { desc = 'debug: Eval' })
    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'debug: Toggle [b]reakpoint' })
    vim.keymap.set('n', '<leader>B', function()
      dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    end, { desc = 'debug: Set conditional [B]reakpoint' })

    dapui.setup()

    vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'debug: See last session result.' })

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    require('dap-python').setup 'python'
  end,
}
