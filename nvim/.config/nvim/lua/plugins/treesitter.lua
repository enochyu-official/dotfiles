return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,

    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "lua",

          "python",
          "toml",
          "json",
          "yaml",

          "c",
          "cpp",
          "asm",
          "bash",

          "regex",
          "markdown",
          "markdown_inline",
        },

        auto_install = false,
        highlight = { enable = true },
        indent = { enable = false },
      })
    end,
  },
}

