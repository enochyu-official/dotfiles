vim.opt_local.spell = true
vim.opt_local.spelllang = { "en" }

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
