return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd"
      }
    },
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- Obtém as capacidades do nvim-cmp para o autocompletar
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Lista de servidores que você quer configurar
      local servers = { "ts_ls", "html", "lua_ls", "clangd" }

      for _, lsp in ipairs(servers) do
        -- No Neovim 0.11/0.12, usamos vim.lsp.config ao invés de lspconfig[lsp].setup
        vim.lsp.config(lsp, {
          capabilities = capabilities,
        })
        
        -- Ativa o servidor
        vim.lsp.enable(lsp)
      end

      -- Atalhos de teclado (LSP Keymaps)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
    end,
  },
}
