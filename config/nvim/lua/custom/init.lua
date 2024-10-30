-- Ensure filetype and syntax settings
vim.cmd [[
  filetype plugin indent on
  syntax enable
]]

-- Configure VimTeX settings
vim.g.vimtex_view_method= 'zathrua'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.maplocalleader = ","
vim.wo.relativenumber = true


