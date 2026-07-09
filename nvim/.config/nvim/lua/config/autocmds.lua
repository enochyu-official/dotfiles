vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

local view = vim.api.nvim_create_augroup("view_persistence", { clear = true })

local function is_real_file(buf)
  if vim.bo[buf].buftype ~= "" then return false end
  local name = vim.api.nvim_buf_get_name(buf)
  if name == "" then return false end
  if vim.fn.filereadable(name) == 0 then return false end
  return true
end

vim.api.nvim_create_autocmd({ "BufWinLeave", "BufWritePost" }, {
  group = view,
  callback = function(ev)
    if not is_real_file(ev.buf) then return end
    pcall(vim.cmd, "silent! mkview")
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  group = view,
  callback = function(ev)
    if not is_real_file(ev.buf) then return end
    pcall(vim.cmd, "silent! loadview")
  end,
})

vim.opt.viewoptions:remove("curdir")
vim.opt.viewoptions:append("folds")

