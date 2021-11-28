" Syntax
syntax on						" Enable syntax highlight
set showmatch						" Show matching braces
set mat=1						" Set time to show matching braces to 1 second

" Line
set signcolumn=auto:1					" Always show the singlecolumn - prevents shifting the text each time diagnostics appear / become resolved
set relativenumber					" Show relative line numbers
set number						" Show line non-relative number for the current line
set nowrap						" Display line without wrapping

" Cursor
set ruler						" Show the cursor position all the time
set scrolloff=3						" Keep 3 lines visible above/below the cursor when scrolling
set sidescrolloff=7					" Keep 7 characters visible to the left/right of the cursor when scrolling
set sidescroll=1					" Scroll left/right one character at a time

" File
set encoding=UTF-8					" The encoding displayed
set fileencoding=UTF-8					" Encoding written to file
set autoread						" Automatically reload file if modified from the outside
filetype plugin on					" Load plugins based on file type
filetype indent on					" Load indent settings based on file type
set undofile						" Store undo info in a file
set undodir=~/.vim-undo					" Where to store the undo information
set wildmenu						" Enable auto complete for :e command after pressing <TAB>

" Indentation
set autoindent						" Automatically indent
set noexpandtab						" Force Smart Tabs
set tabstop=8						" Tab equals to 8 spaces
set softtabstop=8					" Tab equals to 8 spaces
set shiftwidth=8					" Tab equals to 8 spaces
set nolist						" Disable indent characters (Check keymapping.vim for toggle bind)
set listchars=tab:>\ ,space:.,trail:_,
			\extends:>,precedes:<,nbsp:~	" Specify indent characters

" Theme
set background=dark					" Use dark background color
let g:gruvbox_contrast_dark='medium'			" Use Medium contrast variant for gruxbox theme
try | colorscheme gruvbox | catch | endtry		" Use gruxbox theme
highlight Pmenu ctermbg=black guibg=black		" Fix popup color so it's easier to read
let g:airline_theme='gruvbox'				" Choose status bar theme
let g:gruvbox_color_column='dark0'			" Fix sign column color from ugly light

" Commands
set notimeout						" Disables timeout for commands
set showcmd						" Show current command in status line
set noshowmode						" Disable display of: -- INSERT ---, etc.

" Misc
set hidden						" Possibility of having more than one unsaved buffers
set cmdheight=2						" Give more space for command messages
set updatetime=300					" Save swap file after 300 ms - useful for crash recovery
set shortmess+=c					" Don't give |ins-completion-menu| messages.
set splitbelow splitright				" Put new splits to the right
set mouse=a						" Enable mouse

" Fixes
let g:python3_host_prog = 'C:\Program Files\Python38\python.exe'	" Fix Python 3 provider

" Nevim-QT specific
source ~/AppData/Local/nvim/neovim-qt-config.vim
