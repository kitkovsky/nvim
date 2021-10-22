call plug#begin('~/.config/nvim/autoload/plugged')

  " telescope requirements
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " statusline git status
  Plug 'ThePrimeagen/git-worktree.nvim'

  "Plug 'mhinz/vim-startify'
  "Plug 'lifepillar/vim-gruvbox8'
  Plug 'gruvbox-community/gruvbox'
  Plug 'preservim/nerdcommenter'
  Plug 'airblade/vim-gitgutter'
  Plug 'psliwka/vim-smoothie'
  Plug 'tweekmonster/startuptime.vim'
  Plug 'alvan/vim-closetag'
  "Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'

  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  "Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'sbdchd/neoformat'
  Plug 'ap/vim-css-color'
  Plug 'mattn/emmet-vim'

  " lsp and treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'

  " nvim in google chrome
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

  " prime's refactoring
  "Plug 'ThePrimeagen/refactoring.nvim'

call plug#end()

