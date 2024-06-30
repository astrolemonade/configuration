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
vim.opt.listchars = {
  tab = '⇥ ',
  trail = '+',
  precedes = '<',
  extends = '>',
  space = '·',
  nbsp = '␣',
  leadmultispace = '┊ ',
}
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.guicursor = 'n-v-i-c:block-Cursor'
vim.opt.wrap = false
vim.opt.shortmess:append 'I'
