return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  config = function()
    local goto_preview = require("goto-preview")
    goto_preview.setup({})

    vim.keymap.set("n", "<leader>pd", goto_preview.goto_preview_definition, { desc = "Preview Definition" })
    vim.keymap.set("n", "<leader>pD", goto_preview.goto_preview_declaration, { desc = "Preview Declaration" })
    vim.keymap.set("n", "<leader>pr", goto_preview.goto_preview_references, { desc = "Preview References" })
    vim.keymap.set("n", "<leader>pi", goto_preview.goto_preview_implementation, { desc = "Preview Implementation" })
    vim.keymap.set("n", "<leader>pc", goto_preview.close_all_win, { desc = "Close Preview Windows" })
  end,
}
