return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,

    init = function()
      require('nightfox').setup({
        options = {
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled",
          transparent = true,
          terminal_colors = true,
          dim_inactive = false,
          module_default = true,
          colorblind = {
            enable = false,
            simulate_only = false,
            severity = {
              protan = 0,          -- Severity [0,1] for protan (red)
              deutan = 0,          -- Severity [0,1] for deutan (green)
              tritan = 0,          -- Severity [0,1] for tritan (blue)
            },
          },
        },
      })

      vim.cmd("colorscheme nightfox")
    end,
  },
}


