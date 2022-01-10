"	--- Plugins ---
call plug#begin('~/AppData/Local/nvim/plug-ins')

" --- Color theme ---
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }		" Gruvbox - color theme

" --- Statusbar ---
Plug 'https://github.com/vim-airline/vim-airline' 	" Airline - Status bar at the bottom
Plug 'vim-airline/vim-airline-themes'			" Airline Themes - Status bar themes

" --- Code Completion ---
Plug 'neovim/nvim-lspconfig'				" LSPConfig - Native Language Service Provider for NeoVim
Plug 'hrsh7th/cmp-nvim-lsp'				" LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer'				" Cmp Buffer - Code completion dependency
Plug 'hrsh7th/nvim-cmp'					" Nvim Cmp - Code completion plugin
Plug 'L3MON4D3/LuaSnip'					" LuaSnip - Snippets engine
Plug 'saadparwaiz1/cmp_luasnip'				" LuaSnip - Snippets engine
Plug 'onsails/lspkind-nvim'				" LSPKind - VSCODE like pictograms for autocompletion
Plug 'windwp/nvim-autopairs'				" Nvim Autopairs - automatic bracket pairs
Plug 'folke/lsp-colors.nvim'				" LSP Colors - FIX diagnostic color highlights

" --- Fuzzy Finder ---
Plug 'nvim-treesitter/nvim-treesitter'			" Treesitter - Language parsing
Plug 'nvim-lua/plenary.nvim'				" Plenary - Telescope Dependency
Plug 'nvim-telescope/telescope.nvim', { 'commit': '492f1d3' }	" Telescope - Fuzzy finder | Latest 0.5.1 supported commit

" --- File Explorer ---
Plug 'https://github.com/preservim/nerdtree' 		" NERDTree - File explorer
Plug 'https://github.com/ryanoasis/vim-devicons' 	" Devicons - Developer Icons for NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'			" NERDTree Git - Git icons for NerdTree

" --- Version Control ---
Plug 'mhinz/vim-signify'				" Signify - Display Git file changes next to lines
Plug 'tpope/vim-fugitive'				" Fugitive - Git commands Integration

" --- Misc ---
Plug 'andweeb/presence.nvim'				" Discord Rich Presence for NeoVim
Plug 'tpope/vim-commentary'				" Comment out lines with shortcuts
Plug 'tpope/vim-surround'				" Surround text with characters

call plug#end()

"	--- Config ---
source ~/Appdata/Local/nvim/plugin-configs/airline.vim
source ~/Appdata/Local/nvim/plugin-configs/signify.vim
source ~/Appdata/Local/nvim/plugin-configs/nerdtree.vim
source ~/Appdata/Local/nvim/plugin-configs/treesitter.vim
source ~/Appdata/Local/nvim/plugin-configs/nvim-cmp.vim
source ~/Appdata/Local/nvim/plugin-configs/nvim-autopairs.vim
source ~/Appdata/Local/nvim/plugin-configs/lspconfig.vim
source ~/Appdata/Local/nvim/plugin-configs/presence.vim
