set noai
set nu

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
execute pathogen#infect()

filetype plugin indent on

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" CFEngine Syntax Highlighting
au BufRead,BufNewFile *.cf set ft=cf3
