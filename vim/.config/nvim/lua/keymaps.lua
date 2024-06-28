vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = '[y]ank to OS clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = '[Y]ank line to OS clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d', { desc = '[d]elete to OS clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>D', '"+D', { desc = '[D]elete line to OS clipboard' })
vim.keymap.set('n', '<leader>p', '"+p', { desc = '[p]aste from OS clipboard after cursor' })
vim.keymap.set('n', '<leader>P', '"+P', { desc = '[P]aste from OS clipboard before cursor' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local function toggle_background()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end
vim.keymap.set('n', '<leader>bg', toggle_background, { noremap = true, silent = true, desc = 'Toggle light/dark [b]ack[g]round' })

-- vim: ts=2 sts=2 sw=2 et
