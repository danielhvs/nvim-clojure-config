-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'neovim/nvim-lspconfig'

  use {
   'hrsh7th/nvim-cmp',
    requires = {
       {'hrsh7th/cmp-path', branch = 'main'}
      ,{'hrsh7th/cmp-buffer'}
      ,{'hrsh7th/cmp-nvim-lsp'}
      -- ,{'PaterJason/cmp-conjure'}
    }
  }

end)
