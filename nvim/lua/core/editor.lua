local opt = vim.opt

opt.nu = true
opt.relativenumber = false

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = true

opt.scrolloff = 5

opt.autoread = true

opt.colorcolumn = "120"

opt.clipboard = "unnamedplus"

opt.ignorecase = true
opt.smartcase = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  command = "setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab",
})

