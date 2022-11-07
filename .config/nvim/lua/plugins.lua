vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'sheerun/vim-polyglot'
	use 'kdheepak/lazygit.nvim'
	use 'github/copilot.vim'
	use 'tpope/vim-commentary'
	use 'nvim-tree/nvim-web-devicons'
	use 'vim-airline/vim-airline-themes'

	use 'tpope/vim-obsession'
	use 'dhruvasagar/vim-prosession'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
      'w0rp/ale',
      cmd = 'ALEEnable',
      config = 'vim.cmd[[ALEEnable]]'
    }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
}

	use 'bling/vim-airline'
	if packer_bootstrap then
    require('packer').sync()
  end
end)
