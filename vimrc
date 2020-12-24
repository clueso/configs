set nocompatible
filetype off
filetype plugin indent on

"source ~/.vim/plugin/cscope_maps.vim

if has("cscope")
    let curdir = getcwd()

    " This is a better way of adding the cscope DB because it searches the
    " current as well as parent dirs. The one via the plugins folder only
    " searches the current dir.
    while getcwd() != "/"
        if filereadable("cscope.out")
            " Suppress 'dupliate DB' error
            set nocscopeverbose
            cs add cscope.out
            set cscopeverbose
            "set cscopetag "this one doesn't use quickfix...
            "set csto=1
            "set cscopequickfix=s-,c-,d-,i-,t-,e-
            "nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>:cw<cr>
            break
        endif

        cd ..
    endwhile
    execute "cd " . curdir
endif
let g:netrw_liststyle = 1

set t_Co=256
set statusline=%f%m%r%h%w\ \ \ [buffer:%n]
if has('mouse')
    set mouse=a
    set mousehide
endif
set nohlsearch
set smartcase
set nu
set hlsearch
set list
set listchars=tab:»\ ,trail:•,extends:#,nbsp:. 
set cc=80
set splitright
set fillchars+=vert:│

" Uncomment to make the tab key indent by 4 spaces.
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
hi ColorColumn ctermbg=DarkGray guibg=DarkGrey
colo zenburn
syntax on


nmap <silent> <F2> :30winc > <CR>
nmap <silent> <F3> :30winc < <CR>
nmap <silent> <F4> :res +10 <CR>
nmap <silent> <F5> :res -10 <CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-t> :tabnew<CR>
nmap <silent> <c-t> l :tabn<CR>
nmap <silent> <c-t> h :tabp<CR>
nmap <c-g>r "zyiw<Esc>:grep -R <C-r>z 
nmap :dt :diffthis
nmap :do :diffoff
nmap :we :windo e
nnoremap <expr> <C-n> &diff ? ':qa<CR>' : '<C-n>'
