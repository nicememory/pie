" Define shortcut's prefix, ie. <Leader>
let mapleader=";"

" Enable file type detection
filetype on

" Load plugin for each different file type
filetype plugin on

" Define shotcuts to line head and line tail
nmap LB 0
nmap LE $

" Set shotcut to copy selected text to system clipboard
vnoremap <Leader>y "+y

" Set shotcut to paste content of system clipboard to Vim
nmap <Leader>p "+p

" Define shotcut to close content of current window
nmap <Leader>q :q<CR>

" Define shortcut to save content of current window
nmap <Leader>w :w<CR>

" Define shortcut to save content of all windows and exit
nmap <Leader>WQ :wa<CR>:q<CR>

" Don't save anything and quit directly
nmap <Leader>Q :qa!<CR>

" Traverse children windows
nnoremap nw <C-W><C-W>

" Jump to right window
nnoremap <Leader>lw <C-W>l

" Jump to left window
nnoremap <Leader>hw <C-W>h

" Jump to above window
nnoremap <Leader>kw <C-W>k

" Jump to below window
nnoremap <Leader>jw <C-W>j

" Define shortcut to jump between paired characters
nmap <Leader>M %

" Make configuration effective just now
autocmd BUfWritePost $MYVIMRC source $MYVIMRC

"Color scheme
syntax enable
set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme phd

" Enable realtime search
set incsearch

" Make search case-insensitive
set ignorecase

" Disable compatitive mode
set nocompatible

" vim auto smart complete mode of command line
set wildmenu

" Disable cursor blink
set gcr=a:block-blinkon0

" Disable display scroll bars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Disable display menu and toolbar
set guioptions-=m
set guioptions-=T

" Always display status bar
set laststatus=2

" Highlight show search results
set hlsearch

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
" 插件列表结束
call vundle#end()
filetype plugin indent on

