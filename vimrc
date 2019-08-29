set nocompatible
let g:netrw_liststyle = 1

set t_Co=256
set statusline=%f%m%r%h%w\ \ \ [buffer:%n]
set mouse=a
set smartcase
set nu
set hlsearch
set list
set listchars=tab:»\ ,trail:•,extends:#,nbsp:. 
set cc=80
set splitright
set fillchars+=vert:│
hi ColorColumn ctermbg=DarkGray guibg=DarkGrey
colo zenburn


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
