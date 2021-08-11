" .vimrc
source ~/.vim/plugins.vim

" vim core config
"""""""""""""""""

set number                        " show line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set smartcase                     " pay attention to case when caps are used
" set incsearch                     " show search results as I type
" set updatetime=300                " reduce updatetime for gitgutter (default 4000)
set vb                            " enable visual bell (disable audio bell)
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set noswapfile                    " disable swap files
" set cursorline                    " highlight current cursorline
set splitright                    " append vertical splits to right
set splitbelow                    " append horizontal splits to bottom

let mapleader = ","               " set leader key to comma

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

" visualization and themes
""""""""""""""""""""""""""

" base16-shell config
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

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

" use fzf for fuzzy search
set rtp+=/usr/local/opt/fzf

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" open NERDtree automatically if no file specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if NERDtree is the only left open window
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" ale linter configuration
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=red ctermfg=white
highlight ALEWarningSign ctermbg=yellow ctermfg=black
highlight ALEWarning ctermbg=RED

" git-gutter configuration
let g:gitgutter_grep = 'rg'

let g:deoplete#enable_at_startup = 1

" import custom vim mappings
source ~/.vim/mappings.vim
