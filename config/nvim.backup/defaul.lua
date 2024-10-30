-- init.lua

-- Ensure packer is installed and set up
vim.cmd [[packadd packer.nvim]]

-- Use packer to manage plugins
require('packer').startup(function()
    -- Manage packer itself
    use 'wbthomason/packer.nvim'

    -- Install the base16 colorscheme
    use 'chriskempson/base16-vim'
    
    -- Install the Gruvbox colorscheme
    use 'morhetz/gruvbox'
end)

-- After packer is set up, you can configure your plugins
-- Set up Gruvbox Dark theme with contrast level
vim.cmd('syntax enable')
vim.cmd('set background=dark')

-- Set Gruvbox contrast level: 'soft', 'medium', or 'hard'
vim.g.gruvbox_contrast_dark = 'medium'  -- Change to 'soft' or 'medium' if desired

vim.cmd('colorscheme gruvbox')

-- Set Neovim options
vim.o.relativenumber = true
vim.o.guicursor = 'n-v-c:block,i:block'
