vim.api.nvim_create_autocmd('BufReadPost', {
  desc = 'Open file at the last position it was edited earlier',
  ---@diagnostic disable-next-line: undefined-global
  group = misc_augroup,
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

vim.api.nvim_create_user_command('CopyCodeBlock', function(opts)
  local lines = vim.api.nvim_buf_get_lines(0, opts.line1 - 1, opts.line2, true)
  local content = table.concat(lines, '\n')
  local result = string.format('```%s\n%s\n```', vim.bo.filetype, content)
  vim.fn.setreg('+', result)
  vim.notify 'Text copied to clipboard'
end, { range = true })

local function update_lead()
  local lead = '┊'
  for _ = 1, vim.bo.shiftwidth - 1 do
    lead = lead .. ' '
  end
  vim.opt_local.listchars:append { leadmultispace = lead }
end
vim.api.nvim_create_autocmd('OptionSet', { pattern = { 'listchars', 'tabstop', 'filetype', 'shiftwidth' }, callback = update_lead })
vim.api.nvim_create_autocmd('VimEnter', { callback = update_lead, once = true })
