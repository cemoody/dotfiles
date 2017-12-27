"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/chris/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/chris/.vim/bundles')
  call dein#begin('/home/chris/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/home/chris/.vim/bundles/repos/github.com/Shougo/dein.vim')


  " Install packages
  call dein#add('vim-airline/vim-airline')
  call dein#add('frankier/neovim-colors-solarized-truecolor-only')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('bling/vim-bufferline')
  call dein#add('w0rp/ale')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


" ALE Linter to Py3
set nocompatible
filetype off
let &runtimepath.=',~/.vim/bundles/repos/w0rp/ale'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
filetype plugin on
" let g:ale_sign_column_always = 1

" colorscheme: solarized
set termguicolors
set background=light
colorscheme solarized
set t_Co=256

" Tab to skip through buffers
nnoremap <C-Tab> :bnext<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
set hidden              " Allow us to switch tabs withour writing buffer out

"set tabs for python
set ts=4
set tabstop=4
set softtabstop=4 shiftwidth=4 expandtab

" UI
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set showmatch           " highlight matching [{()}]
set wildmenu            " visual autocomplete for command menu
set scrolloff=5         " always have some lines of text when scrolling
set number              " Turn on line numbers
set mouse=a             " Turn on scrolling
nnoremap <leader><space> :nohlsearch<CR>   " turn off search highlight

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
let mapleader=","       " leader is comma
inoremap jk <esc>       " jk is escape

" Backup files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" airline options
" let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1        " Turn on buffer on top
let g:airline#extensions#bufferline#enabled = 0     " Turn off bufferline on bottom
