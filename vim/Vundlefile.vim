filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Navigation
""""""""""""

Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'

" Git
"""""

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Languages
"""""""""""

Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-bundler'

" Style
"""""""
" Plugin 'chriskempson/base16-vim'
" 2019-02-19 - Temporarily use fork of base16-vim which fixes an issue with
" Vim 8.1.0887 and newer. When a change is landed, then revert back to
" canonical repo.
"
" Issue https://github.com/chriskempson/base16-vim/issues/197
" Pull Request https://github.com/chriskempson/base16-vim/pull/198
Plugin 'danielwe/base16-vim'

" Misc
""""""
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/neocomplete'

Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
