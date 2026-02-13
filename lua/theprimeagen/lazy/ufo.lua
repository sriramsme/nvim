return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
    "nvim-treesitter/nvim-treesitter",
  },
  event = "BufReadPost",
  config = function()
    -- Fold UI
    vim.o.foldcolumn = "1"        -- show fold column
    vim.o.foldlevel = 99          -- required for ufo
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Keymaps (ufo overrides default zR / zM behavior)
    vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
    vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })

    -- Treesitter first, indent fallback
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })

    ------------------------------------------------------------------
    -- LSP folding capability (safe, does NOT reconfigure servers)
    ------------------------------------------------------------------
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    -- Attach folding capability to all active/future LSP clients
    local lspconfig = require("lspconfig")
    for _, server in pairs(lspconfig) do
      if type(server) == "table" and server.setup then
        server.capabilities =
          vim.tbl_deep_extend("force", server.capabilities or {}, capabilities)
      end
    end
  end,
}
