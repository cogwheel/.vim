call pathogen#infect()
call pathogen#helptags()

set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch

set hidden

" disable beeping
set vb t_vb=

let g:netrw_liststyle=3     " Tree mode view
let g:netrw_browse_split=4  " Open file in previous buffer
let g:netrw_preview=1       " Preview window shown in vsplit
let g:netrw_winsize=20      " Make netrw window smaller

set ruler
set incsearch
set number
set backspace=indent,eol,start whichwrap+=<,>,[,]

if has('mouse')
	set mouse=a
endif

if has('vms')
	set nobackup
else
	set backup
endif

if has('gui_running') || $TERM == "xterm"
    let &t_Co = 256
endif

if &t_Co > 2
	syntax on
	highlight comment ctermfg=darkgray
	set hlsearch
endif

filetype plugin indent on
colorscheme desert256

augroup vimrcEx
au!

if has('autocmd')
    autocmd FileType text setlocal textwidth=78
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif


"
" MAPPINGS
"

map <Leader>nt :NERDTree<cr>
