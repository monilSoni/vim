syntax enable   " enable syntax processing
color dracula

set tabstop=4   " number of visual spaces per TAB
set softtabstop=4   " number of spaces in TAB while editing
set shiftwidth=4
set expandtab

set number  " show line numbers
set cursorline  " highlight the current line

set showmode    " see what mode you're in
set showcmd " see what commands you are typing


set smartindent
filetype indent on  " load filetype-specific indent files
set wildmenu 
set wildmode=list:longest 
set showmatch   " highlight paranthesis matching
set undofile    " undo previous actions even after you close and open a file    

set incsearch   " search as characters are entered
set hlsearch    " highlight matches

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
