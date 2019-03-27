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

" Style
"""""""
" Plug 'chriskempson/base16-vim'
" 2019-02-19 - Temporarily use fork of base16-vim which fixes an issue with
" Vim 8.1.0887 and newer. When a change is landed, then revert back to
" canonical repo.
"
" Issue https://github.com/chriskempson/base16-vim/issues/197
" Pull Request https://github.com/chriskempson/base16-vim/pull/198
Plug 'danielwe/base16-vim'

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
