vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
-- vim.opt.showmode = false
-- vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.guicursor = 'n-v-i-c:block-Cursor'
vim.opt.wrap = false
vim.opt.shortmess:append 'I'

vim.g.netrw_banner = 0

vim.api.nvim_create_autocmd('BufReadPost', {
  desc = 'Open file at the last position it was edited earlier',
  group = misc_augroup,
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

-- vim: ts=2 sts=2 sw=2 et
