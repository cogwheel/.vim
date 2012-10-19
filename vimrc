call pathogen#infect()
call pathogen#helptags()

colorscheme desert

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

if &t_Co > 2 || has('gui_running')
	syntax on
	highlight comment ctermfg=darkgray
	set hlsearch
endif

filetype plugin indent on
augroup vimrcEx
au!

if has('autocmd')
    autocmd FileType text setlocal textwidth=78
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif
