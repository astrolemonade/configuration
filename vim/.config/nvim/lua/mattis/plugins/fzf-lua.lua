return {
  {
    'ibhagwan/fzf-lua',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      local fzf = require 'fzf-lua'

      fzf.setup { 'telescope' }

      vim.keymap.set('n', '<leader>sh', fzf.helptags, { desc = 'fzf: [S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', fzf.keymaps, { desc = 'fzf: [S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', fzf.files, { desc = 'fzf: [S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', fzf.builtin, { desc = 'fzf: [S]earch [S]elect fzf-lua' })
      vim.keymap.set('n', '<leader>sw', fzf.grep_cword, { desc = 'fzf: [S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', fzf.live_grep, { desc = 'fzf: [S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sp', fzf.live_grep_glob, { desc = 'fzf: [S]earch by Grep [P]attern' })
      vim.keymap.set('n', '<leader>sd', fzf.diagnostics_document, { desc = 'fzf: [S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', fzf.resume, { desc = 'fzf: [S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', fzf.oldfiles, { desc = 'fzf: [S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = 'fzf: [ ] Find existing buffers' })

      fzf.register_ui_select()
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
