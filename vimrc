" vim configuration file
" located: ~/.vimrc

set nocompatible " Must come first because it changes other options.

" environment
syntax on; " enable syntax highlighting

set title " Set the terminal's title
"set number " Show line numbers.
set ruler  " Show cursor position

" search settings
set ignorecase " Case-insensitive searching
set incsearch " Highlight matches as you type
set hlsearch  " Highlight matches when search completed

set tabstop=2 " Global tab width.
set shiftwidth=2 " And again, related

set wildmenu " Enhanced command line completion.
set wildmode=list:longest " Complete files like a shell.
