" vim configuration file
" located: ~/.vimrc

set nocompatible " Must come first because it changes other options.

execute pathogen#infect()

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" environment
syntax on; " enable syntax highlighting

set title " Set the terminal's title
set number " Show line numbers.
set ruler  " Show cursor position
set list " show hidden characters

" search settings
set ignorecase " Case-insensitive searching
set incsearch " Highlight matches as you type
set hlsearch  " Highlight matches when search completed

set tabstop=2 " Global tab width.
set shiftwidth=2 " And again, related
set softtabstop=2
set expandtab

set wildmenu " Enhanced command line completion.
set wildmode=list:longest " Complete files like a shell.

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_ruby_checkers=['rubocop', 'mri']

" ctrlp.vim
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<c-t>'], 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'] } " open files in a tab

" NERDtree
" autocmd vimenter * NERDTree " open nerdtree on startup

" syntax filetypes
au BufNewFile,BufRead,BufReadPost *.n3 set syntax=n3
au BufNewFile,BufRead,BufReadPost *.ttl set syntax=n3
au BufNewFile,BufRead,BufReadPost *.nt set syntax=n3
