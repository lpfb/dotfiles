local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
require('Comment').setup()

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    -- Remove espaços no fim da linha
    vim.api.nvim_command([[silent! %s/\s\+$//e]])
    -- Remove linhas em branco extras no fim do arquivo
    vim.api.nvim_command([[silent! %s/\n\+\%$//e]])
    vim.fn.winrestview(save)
  end,
})
