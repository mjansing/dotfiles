" default keybindings
"""""""""""""""""""""

" disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" yank buffer with gy
nnoremap gy :%y+<cr>

" select buffer with vy
nnoremap vy ggVG

" format file
nmap <leader>ff ggVG=

" highlight current word without jumping to next
nnoremap <leader>h *<C-O>

" clear search
noremap <C-h> :nohlsearch<CR>

" split window and switch to the new split
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" navigation keybindings
""""""""""""""""""""""""

" smart split switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tab navigation
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>0 :tablast<cr>
map <leader>t :tabnew<cr>
map <leader>w :tabclose<cr>


" plugin keybindings
""""""""""""""""""""

" NERDTree toogle
map <leader>n :NERDTreeToggle<CR>

" clear search on return
nnoremap <CR> :nohlsearch<cr>

" fuzzy search for and in files without using NERDTree buffer
nnoremap <silent> <expr> <C-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":GFiles\<cr>"
nnoremap <C-f> :Rg<Cr>
