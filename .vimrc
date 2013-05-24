set nocompatible
set laststatus=2
set encoding=utf-8
filetype off  

set number
syntax on

" bind F2 to past from clipboard
set pastetoggle=<F2>

" Line after and before scrollin Line after and before scrollingg
set scrolloff=3

set autoread

" Search
set incsearch
set hlsearch

" Indentantion
" set list listchars=tab:\ \ ,trail:·

" Symbols for powerline enable
" let g:Powerline_symbols = 'fancy'

" Color of line number
highlight LineNr ctermfg=grey ctermbg=black

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-fugitive.git'


" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

" Store lots of history entries: :cmdline and search patterns
    set history=1000
    " Save file with root permissions
    command! W exec 'w !sudo tee % > /dev/null' | e!
