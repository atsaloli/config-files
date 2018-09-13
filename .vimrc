set noai
set nu

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
execute pathogen#infect()

filetype plugin indent on

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" CFEngine Syntax Highlighting
au BufRead,BufNewFile *.cf set ft=cf3

" remove "created by ... on ..." from GitLab Merge Request / Issue  copy pasta
:imap ,v )<ESC>?created by<CR>DJxxo

" Trigger paste mode automatically when pasting via the terminal
" https://github.com/ryanpcmcquen/fix-vim-pasting/blob/master/fix-vim-pasting.vim

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

" mark long lines
match ErrorMsg '\%>120v.\+'

" mark trailing whitespace
match ErrorMsg '\s\+$'


" Ctrl-J and Ctrl-K to scroll text past the cursor.
" See https://vi.stackexchange.com/questions/15200/make-ctrl-j-and-ctrl-k-work-like-they-do-in-less/15202#15202
:nnoremap <expr> <c-j> winline() == winheight(0) ? "\<c-e>j" : "j\<c-e>"
:nnoremap <expr> <c-k> winline() == 1 ? "\<c-y>k" : "k\<c-y>"
