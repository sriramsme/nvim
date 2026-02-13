return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.config").setup({
        -- Parsers to install
        ensure_installed = {
          "python",
          "javascript",
          "typescript",
          "tsx",
          "lua",
          "rust",
          "c",
          "bash",
        },

        -- Install parsers asynchronously
        sync_install = false,

        -- Auto-install missing parsers when entering buffer
        auto_install = true,

        -- Treesitter-based indentation
        indent = { enable = true },

        -- Syntax highlighting
        highlight = {
          enable = true,
          disable = function(_, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              vim.notify(
                "File larger than 100KB, Treesitter disabled for performance",
                vim.log.levels.WARN,
                { title = "Treesitter" }
              )
              return true
            end
          end,
          additional_vim_regex_highlighting = { "markdown" },
        },
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    after = "nvim-treesitter",
    config = function()
      require("treesitter-context").setup({
        enable = true,
        multiwindow = false,
        max_lines = 0,
        min_window_height = 0,
        line_numbers = true,
        multiline_threshold = 20,
        trim_scope = "outer",
        mode = "cursor",
        separator = nil,
        zindex = 20,
        on_attach = nil,
      })
    end,
  },
}

