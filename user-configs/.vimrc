" Make external commands work through a pipe instead of a pseudo-tty "set noguipty 
" You can also specify a different font, overriding the default font
if has('win32')
    set guifont=Consolas:h12   " Win32.
elseif has('gui_macvim')
    set guifont=Courier\ New:h12     " OSX.
else
    set guifont=Monospace\ 12  " Linux.
endif

colorscheme desert
filetype plugin on
"map <leader>\ :NERDTreeToggle<cr>
map <leader>\ :NERDTreeFocus<cr>
map <leader>cc :NERDComToggleComment<cr>
map <f4> :BufExplorer<cr>
imap <a-c> <Esc>
vmap <a-c> <Esc>

noremap <tab>k <c-w>k
noremap <tab>j <c-w>j
noremap <tab>l <c-w>l
noremap <tab>h <c-w>h
"map wwk <c-w>k
"map wwj <c-w>j
"map wwl <c-w>l
"map wwh <c-w>h

noremap <c-n> ]m
noremap <c-p> [m
inoremap <c-n> <c-x><c-n>
inoremap <c-p> <c-x><c-p>
"inoremap <c-f> <c-x><c-f>
"inoremap <c-k> <c-x><c-k>
ab #! #!/bin/bash

"nmap <space> <c-d>
"nmap <s-space> <c-u>
nmap <space> <c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e><c-e>
nmap <s-space> <c-y><c-y><c-y><c-y><c-y><c-y><c-y><c-y><c-y><c-y>
"imap <c-space> <c-x><c-o>
inoremap <c-space> <c-x><c-o>
filetype on
filetype plugin on
filetype plugin indent on
syntax on
set scrolloff=2
set includeexpr=substitute(v:fname,'^/','','')
set noautowrite
set ignorecase
set nowrap
set autochdir
set foldmethod=syntax
"set noswapfile
"set nobackup
set splitbelow
set splitright
set nostartofline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set lsp=0
set showcmd
"set cursorline
set cmdheight=1
set nu
	
