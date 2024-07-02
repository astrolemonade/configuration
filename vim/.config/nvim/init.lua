vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.work = vim.fn.hostname() ~= 'macbook.local'
vim.g.have_nerd_font = not vim.g.work

require 'options'
require 'keymaps'
require 'misc'
require 'lazy-bootstrap'
require 'lazy-plugins'
