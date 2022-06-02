set background=dark

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_hide_endofbuffer=1
let g:gruvbox_terminal_italics=1
let g:gruvbox_termcolors=256
let g:gruvbox_invert_selection='0'
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1

colorscheme gruvbox

highlight ColorColumn ctermbg=0 guibg=grey
highlight Normal guibg=none
highlight Normal ctermbg=none
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f
hi SignColumn guibg=none
hi CursorLineNR guibg=None
hi Comment cterm=italic
hi TelescopeBorder guifg=#5eacd

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
