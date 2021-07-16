syntax on                   "Enable syntax highlighting

set number                  "Enabel numbers

set noswapfile              "Doesn't not create a swap file

"Set up persistent undo across all file
set undofile                "Remember undo history
if !isdirectory("$HOME/.vim/undodir")
    call mkdir("$HOME/.vim/undodir","p")
endif
set undodir="$HOME/.vim/undodir"


packloadall                 "Load all plugins.

silent! helptags ALL        "Load help files for all plugins

filetype plugin indent on   "Enable file type based intendation

set autoindent              "Respect Indentation when starting a new line

set expandtab               "Expand tabs in spaces, Essential in python

set tabstop=4               "Number of spaces tab is counted

set shiftwidth=4            "Number of spaces to use for autoindent


set backspace=2             "Fix backspace behaviour in most terminals


colorscheme monokai         "Changes the colorscheme 


"Fast split navigation using <Ctrl> + hjkl
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'artur-shaik/vim-javacomplete2'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'vim-syntastic/syntastic'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

autocmd FileType java setlocal omnifunc=javacomplete#Complete
" Initialize plugin system
call plug#end()
