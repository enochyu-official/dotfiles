return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    lazy = false,
    config = function()
      local ls = require("luasnip")

      ls.config.setup({
        enable_autosnippets = true,
      })

      require("luasnip.loaders.from_lua").lazy_load({
        paths = vim.fn.stdpath("config") .. "/lua/snippets",
      })
    end,
  },
}
