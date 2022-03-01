" Use alt + hjkl to resize windows
nnoremap ∆    :resize -3<CR>
nnoremap Ż    :resize +3<CR>
nnoremap ķ    :vertical resize -3<CR>
nnoremap ł    :vertical resize +3<CR>

" I hate escape more than anything else
inoremap jk <Esc>
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nerdtree stuff
nnoremap <C-n> :NERDTreeToggleVCS<CR>
" start NERDTree when Vim is started without file arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" exit Vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" close a buffer with <leader>bd
nnoremap <leader>bd :bdelete<CR>

" QuickFix list things
nnoremap <leader>j :cnext<CR>zz
nnoremap <leader>k :cprev<CR>zz
nnoremap <leader>co :copen<CR>zz
nnoremap <leader>cq :cclose<CR>zz

" Neoformat
nnoremap <leader>nf :Neoformat<CR>

" Y yanks to the end of the line
nnoremap Y y$

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

