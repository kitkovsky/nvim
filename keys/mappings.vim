" Use alt + hjkl to resize windows
nnoremap ∆    :resize -3<CR>
nnoremap Ż    :resize +3<CR>
nnoremap ķ    :vertical resize -3<CR>
nnoremap ł    :vertical resize +3<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-c> <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" commenting with cmd+/
vmap § <plug>NERDCommenterToggle
nmap § <plug>NERDCommenterToggle

" nerdtree stuff
nnoremap <C-n> :Vexplore<CR>

" close a buffer with <leader>bd
nnoremap <leader>bd :bdelete<CR>

" QuickFix list things
nnoremap <leader>j :cnext<CR>zz
nnoremap <leader>k :cprev<CR>zz
nnoremap <leader>co :copen<CR>zz
nnoremap <leader>cq :close<CR>zz

" Neoformat
nnoremap <leader>nf :Neoformat<CR>

" Y yanks to the end of the line
nnoremap Y y$

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

