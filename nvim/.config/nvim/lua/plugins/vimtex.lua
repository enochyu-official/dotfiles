return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_enabled = 1

      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer =
        "/Applications/Skim.app/Contents/SharedSupport/displayline"
      vim.g.vimtex_view_general_options = "-b -g @line @pdf @tex"

      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        out_dir = "build",
        options = {
          "-file-line-error",
          "-synctex=1",
          "-interaction=halt-on-error",
        },
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "qf",
        callback = function()
          vim.cmd("3wincmd _")
        end,
      })
    end,
  },
}

