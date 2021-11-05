"	--- Plugins ---
call plug#begin('~/AppData/Local/nvim/plug-ins')

Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }			" Gruvbox color theme
Plug 'https://github.com/vim-airline/vim-airline' 	" Status bar at the bottom
Plug 'vim-airline/vim-airline-themes'				" Status bar themes
Plug 'neoclide/coc.nvim', {'branch': 'release'}		" Code completion engine
Plug 'nvim-treesitter/nvim-treesitter'				" DEPENDENCY: Telescope | Treesitter - Language parsing
Plug 'nvim-lua/plenary.nvim'						" DEPENDENCY: Telescope
Plug 'nvim-telescope/telescope.nvim'				" Telescope - Fuzzy finder
Plug 'https://github.com/preservim/nerdtree' 		" NerdTree - File explorer
Plug 'https://github.com/ryanoasis/vim-devicons' 	" Developer Icons for NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin'					" Git icons for NerdTree
Plug 'mhinz/vim-signify'							" Version Control - Show diffs 
Plug 'tpope/vim-fugitive'							" Version Control - Integration
Plug 'andweeb/presence.nvim'						" Discord rich presence for NeoVim

call plug#end()

"	--- Plugin configurations --- 
source ~/Appdata/Local/nvim/plugins-post/coc-config.vim
source ~/Appdata/Local/nvim/plugins-post/treesitter-config.vim
source ~/Appdata/Local/nvim/plugins-post/airline-config.vim
source ~/Appdata/Local/nvim/plugins-post/devicons-config.vim
source ~/Appdata/Local/nvim/plugins-post/nerdtree-config.vim
source ~/Appdata/Local/nvim/plugins-post/signify-config.vim
source ~/Appdata/Local/nvim/plugins-post/presence-config.vim
