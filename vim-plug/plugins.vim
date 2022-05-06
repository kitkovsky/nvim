call plug#begin('~/.config/nvim/autoload/plugged')

  " telescope requirements
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " statusline git status
  Plug 'ThePrimeagen/git-worktree.nvim'

  Plug 'gruvbox-community/gruvbox'
  Plug 'airblade/vim-gitgutter'
  Plug 'tweekmonster/startuptime.vim'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-fugitive'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'tpope/vim-commentary'

  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'sbdchd/neoformat'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'mattn/emmet-vim'

  " lsp and treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'onsails/lspkind-nvim'

  Plug 'ray-x/lsp_signature.nvim'

  " nice windows on git commit
  Plug 'rhysd/committia.vim'

  " harpoon
  Plug 'ThePrimeagen/harpoon'

  Plug 'sakshamgupta05/vim-todo-highlight'
  Plug 'kevinoid/vim-jsonc'
call plug#end()
