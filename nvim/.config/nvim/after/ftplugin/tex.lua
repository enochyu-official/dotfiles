vim.schedule(function()
    vim.opt_local.indentexpr = ""
    vim.opt_local.smartindent = false
    vim.opt_local.cindent = false
    vim.opt_local.indentkeys:remove({ "{", "}", "0{", "0}" })
    vim.opt_local.autoindent = true
end)

vim.g.tex_indent_brace = 0

vim.opt_local.spell = true
vim.opt_local.spelllang = { "en" }

vim.opt_local.expandtab = true
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

