" This vimrc was created on 31st March, 2019 by Monil Soni
" 
" This option forces Vim to source .vimrc file if it present in working directory, thus providing a place to store project-specific configuration.
set exrc
" Since Vim will source .vimrc from any directory you run Vim from, this is a potential security hole; so, you should consider setting secure option. This option will restrict usage of some commands in non-default .vimrc files; commands that write to file or execute shell commands are not allowed and map commands are displayed.
set secure
set noswapfile

" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'mtdl9/vim-log-highlighting'
Plug 'itchyny/lightline.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Uncomment the following line if you use YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'

set encoding=utf-8
set nocompatible

syntax enable   " enable syntax processing
" color dracula
colorscheme onedark
" set background=dark " For gruvbox theme

set tabstop=4   " number of visual spaces per TAB
set softtabstop=4   " number of spaces in TAB while editing
set shiftwidth=4
set expandtab

set ruler
set number relativenumber " show line numbers
set cursorline  " highlight the current line

set showmode    " see what mode you're in
set showcmd    " see what commands you are typing

filetype plugin indent on  " load filetype-specific indent files and plugin files

set smartindent
set colorcolumn=120

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu 
set wildmode=list:longest 

set showmatch   " highlight paranthesis matching
set undodir=~/.vim/undodir " All the undo files are placed in this directory
set undofile    " undo previous actions even after you close and open a file    

set incsearch   " search as characters are entered
set hlsearch    " highlight matches
set smartcase   " searches in a case insensitive manner until a different case is encountered. Then it searches case matching

" move vertically by visual line These two allow us to move around lines visually. So if there's a very long line that gets visually wrapped to two lines, j won't skip over the 'fake' part of the visual line in favor of the next 'real' line.
nnoremap j gj
nnoremap k gk

set linebreak

set whichwrap+=<,>,h,l,[,]  " move to previous/next line on reaching end of line

" when new split is opened, it opens either in bottom or on the right
set splitbelow
set splitright

set laststatus=2 " Show the name of the file always

" Making navigation simpler
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" autocmd BufNewFile *.cpp r ~/Competitive-Coding/templates/cpp_template.cpp
