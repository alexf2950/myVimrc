set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle handle vundle, required
Plugin 'VundleVim/Vundle.vim'

" File organisation
Plugin 'scrooloose/nerdtree'

" File organisation
Plugin 'ctrlp.vim'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" Status line
Plugin 'vim-airline/vim-airline'

" Git support
Plugin 'tpope/vim-fugitive'

" Colorscheme
Plugin 'tomasr/molokai'

" Enhanced Syntax
Plugin 'othree/yajs.vim'

" Easy commenting
Plugin 'tpope/vim-commentary'

" Several usefull mappings
Plugin 'tpope/vim-unimpaired'

" Add surrounding tags like quotes or html
Plugin 'tpope/vim-surround'

" Makes surround work with .
Plugin 'tpope/vim-repeat'

" Bracket completion
Plugin 'Raimondi/delimitMate'

" Improve JS syntax support
Plugin 'pangloss/vim-javascript'

" Highlight matching html tags
Plugin 'MatchTag'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Extended matching with '%'. Already included in vim no need for download
packadd! matchit 

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set number 		" line numbers
set encoding=utf-8
set autoread 				" reload files changed outside
set history=1000			" stores more :cmdline history
set re=1		            " Set a non-broken regex engine for syntax highlighting
set nowrap                  " No line wrapping
set scrolloff=2             " 2 lines above/below cursor when scrolling
set matchtime=2             " show matching brackets for 0.2 seconds
set matchpairs+=<:>         " for html

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

"Set font
set guifont=Monospace\ 12

"Remove toolbar and menu
set guioptions -=m
set guioptions -=T

"Set initial size
set lines=50 columns=100



" Switch syntax highlighting on
syntax on
syntax enable
set t_Co=256

set background=dark
colorscheme molokai

" Search Settings
set incsearch		" Find the next search as we type
set hlsearch		" Highlight searches

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Indentation
"===================

set autoindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Special rules for html files
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab

" Save and load sessions
map <F2> :mksession! ~/.vim_session <cr>  " save
map <F3> :source ~/.vim_session <cr>      " load

" Plugin Options
" =================

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" only filenames are shown in tabline
let g:airline#extensions#tabline#fnamecollapse = 1

" let Airline handel the status
set noshowmode

" always enable status line 
set laststatus=2

" allow buffers to be hidden
set hidden

" Key bindings
"====================
" Switch buffers
noremap <leader>] :bnext<CR>            
noremap <leader>[ :bprevious<CR>

" Turn off highlight after search by pressing enter
nnoremap <silent> <CR> :nohlsearch<CR><CR> 

" NerdTree
map <c-t> :NERDTreeToggle<CR>
