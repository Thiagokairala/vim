set nocompatible    " be iMproved, required
" initialize vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'tomasr/molokai'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'burnettk/vim-angular'
Plug 'mattn/emmet-vim'
Plug 'slashmili/alchemist.vim'
Plug 'posva/vim-vue'
Plug 'isRuslan/vim-es6'
Plug 'othree/yajs'
Plug 'scrooloose/nerdtree'
" All Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
syntax enable
set backspace=indent,eol,start
set nobackup
"" Visual
if $TERM_PROGRAM =~ "iTerm"
  set termguicolors
endif
set number
set cursorcolumn
set cursorline
set laststatus=2
colorscheme koehler
let g:molokai_original = 1
let g:rehash256 = 1
"" Airline Tabs
let g:airline#extensions#tabline#enabled = 1
"" Indent
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set shiftround
set nowrap
"" Backups
set nobackup
set noswapfile
"" SilverSearcher
if executable('ag')
  let g:ackprg = 'ag --color --vimgrep'
endif
"" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
if has('python3')
  let g:UltiSnipsUsePythonVersion = 3
endif
"" Ale 
set statusline+=%#warningmsg#
set statusline+=%{ALEGetStatusLine()}
set statusline+=%*
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <F2> :NERDTree<cr>
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_open_list = 1
let g:ale_lint_on_text_changed = 'never'
"" Leader
let mapleader=','
" no trash buttons
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
" netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_winsize = 10
