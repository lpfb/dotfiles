-- Tab configuration
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set autoindent")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Remap ESC to Ctrl+j
vim.keymap.set("i","<c-j>","<Esc>")

-- Retab all file
vim.keymap.set('n', '<leader>t', ':retab<CR>')

-- Remove search hoghlight
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>')

-- Salve file using Ctrl+s
vim.keymap.set('n', '<c-s>', ':w!<CR>')

-- Quit vim using Ctrl+q
vim.keymap.set('n', '<c-q>', ':q<CR>')

-- Splitting settings
vim.keymap.set('n', '<leader>h', ':vs<CR>')
vim.keymap.set('n', '<leader>v', ':sp<CR>')

vim.wo.number = true

