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
	use 'nvim-tree/nvim-tree.lua'
	use 'vim-airline/vim-airline-themes'

    use {
      'w0rp/ale',
      cmd = 'ALEEnable',
      config = 'vim.cmd[[ALEEnable]]'
    }

	use 'bling/vim-airline'
	if packer_bootstrap then
    require('packer').sync()
  end
end)
