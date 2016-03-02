" .vimrc
set encoding=utf-8

source ~/.vim/Vundlefile.vim

" vim core config
"""""""""""""""""

syntax on                         " show syntax highlighting
filetype plugin indent on
set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set expandtab                     " use spaces, not tab characters
set nocompatible                  " don't need to be compatible with old vim
set number                        " show line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set backspace=indent,eol,start    " Allow backspacing everything in insert mode
runtime macros/matchit.vim        " use % to jump between start/end of methods

set splitright                    " append vertical splits to right
set splitbelow                    " append horizontal splits to bottom

if has("autocmd")
 " automatically broadcast config changes
 autocmd bufwritepost .vimrc source ~/.vimrc

 " Remove trailing whitespaces on save
 autocmd BufWritePre * :%s/\s\+$//e
endif

let mapleader = ","               " set leader key to comma

" centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups//
set directory=~/.vim/swaps//
if exists("&undodir")
  set undodir=~/.vim/undo//
endif

" hint to keep lines short
" if exists('+colorcolumn')
"   set colorcolumn=80
" endif

if has("gui_macvim") && has("gui_running")
  set guioptions-=L " remove nerdtree scrollbar
  set guifont=Monaco:h12 " font size
endif

" visualisation and themes
""""""""""""""""""""""""""

" set dark background and color scheme
set background=dark
colorscheme base16-railscasts

" some extra colors
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

" for some reason i had to fix gitgutter background colors
highlight GitGutterAdd ctermbg=236
highlight GitGutterChange ctermbg=236
highlight GitGutterDelete ctermbg=236
highlight GitGutterChangeDelete ctermbg=236

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

" highlight trailing spaces
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" vim plugin configuration
""""""""""""""""""""""""""

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

if executable('ag')
  " use the silver search (ag)  instead of ack
  let g:ackprg = 'ag --nogroup --nocolor --column'

  " use silver searcher for ctrlp
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " disable cache, ag is fast enough
  let g:ctrlp_use_caching = 0
endif

" enable ack.vim auto-preview
let g:ackpreview=1
" let g:ackhighlight=1

" open NERDtree automatically if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if NERDtree is the only left open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" register RDF extensions for n3.vim
augroup filetypedetect
  au BufNewFile,BufRead *.n3  setfiletype n3
  au BufNewFile,BufRead *.ttl  setfiletype n3
  au BufNewFile,BufRead *.nt  setfiletype n3
augroup END


" syntastic configuration

" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }


" custom signs
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol='✗'
let g:syntastic_style_warning_symbol='⚠'

" check on file open
let g:syntastic_check_on_open = 1

let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_scss_checkers = ['scss_lint']

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" import custom vim mappings
source ~/.vim/mappings.vim
