return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "master",
    lazy = false,

    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",

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
        indent = {
	  enable = false,
        },
      })
    end,
  },
}
