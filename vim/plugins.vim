" vim-plug settings
"""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" Navigation
""""""""""""

Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" Git
"""""

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Languages
"""""""""""

Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'

" Style
"""""""

Plug 'chriskempson/base16-vim'

" Misc
""""""
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/neocomplete'

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" All of your Plugins must be added before the following line
call plug#end()
