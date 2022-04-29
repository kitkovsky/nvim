hi Comment cterm=italic
let g:gruvbox_hide_endofbuffer=1
let g:gruvbox_terminal_italics=1
let g:gruvbox_termcolors=256

colorscheme gruvbox
highlight Normal guibg=none
"let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

