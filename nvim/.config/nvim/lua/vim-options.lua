-- Tab configuration
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set autoindent")

-- Map <leader> key to space
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Configuring autocompletition
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Buffer manipulation
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')

-- Remove unwanted withe spaces
vim.keymap.set("n","<F5>",":%s/\\s\\+$//e<CR>")

-- Remap ESC to Ctrl+j
vim.keymap.set("i","<c-j>","<Esc>")

-- Retab all file
vim.keymap.set('n', '<leader>t', ':retab<CR>')

-- Remove search highlight
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>')

-- Salve file using Ctrl+s
vim.keymap.set('n', '<c-s>', ':w!<CR>')

-- Quit vim using Ctrl+q
vim.keymap.set('n', '<c-q>', ':q<CR>')

-- Splitting settings
vim.keymap.set('n', '<leader>h', ':vs<CR>')
vim.keymap.set('n', '<leader>v', ':sp<CR>')

-- Enable line numbers
vim.wo.number = true
