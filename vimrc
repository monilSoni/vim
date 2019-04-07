" This vimrc was created on 31st March, 2019 by Monil Soni

set encoding=utf-8
set nocompatible

syntax enable   " enable syntax processing
color dracula

set tabstop=4   " number of visual spaces per TAB
set softtabstop=4   " number of spaces in TAB while editing
set shiftwidth=4
set expandtab

set number  " show line numbers
set cursorline  " highlight the current line

set showmode    " see what mode you're in
set showcmd    " see what commands you are typing

filetype plugin indent on  " load filetype-specific indent files and plugin files

set smartindent


" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu 
set wildmode=list:longest 

set showmatch   " highlight paranthesis matching
set undofile    " undo previous actions even after you close and open a file    

set incsearch   " search as characters are entered
set hlsearch    " highlight matches
set smartcase   " searches in a case insensitive manner until a different case is encountered. Then it searches case matching

" move vertically by visual line These two allow us to move around lines visually. So if there's a very long line that gets visually wrapped to two lines, j won't skip over the "fake" part of the visual line in favor of the next "real" line.
nnoremap j gj
nnoremap k gk

set linebreak

set whichwrap+=<,>,h,l,[,]  " move to previous/next line on reaching end of line

" when new split is opened, it opens either in bottom or on the right
set splitbelow
set splitright

set laststatus=2 " Show the name of the file always

" Disable arrow keys in every mode except insert
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Cursor remapping from block to ibeam in insert mode
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

autocmd BufNewFile *.c r ~/Templates/c_snippet.c
autocmd BufNewFile *.cpp r ~/Templates/cpp_snippet.cpp
