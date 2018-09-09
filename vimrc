set hlsearch
set nu
set mouse=a
syntax on
set t_Co=256

set cc=80
set list
set listchars=tab:»\ ,trail:●,extends:#,nbsp:.

colo desert

noremap <silent> <F2> : :30winc > <Enter>
noremap <silent> <F3> : :30winc < <Enter>
noremap <silent> <F4> : :10winc + <Enter>
noremap <silent> <F5> : :10winc - <Enter>
noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>

hi PreProc ctermfg=81 term=bold
colo zenburn
