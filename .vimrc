set noai
set nu

filetype plugin indent on

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" CFEngine Syntax Highlighting
au BufRead,BufNewFile *.cf set ft=cf3

" Remap Tab to Esc
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

" Map jk to Esc - it's fast!
imap jk <Esc>
