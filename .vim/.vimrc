"vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'kien/ctrlp.vim' 
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'edkolev/tmuxline.vim'
Bundle 'benmills/vimux'
filetype on                          " try to detect filetypes

"vim behavoir
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set pastetoggle=<c-p>
nnoremap ; :

"synatx on
syntax on                           " syntax highlighing
filetype plugin indent on    " enable loading indent file for filetype

"window splits and folding
set foldmethod=indent
set foldlevel=99

"remap window and help moving
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nnoremap <buffer> <CR> <C-]>
nnoremap <buffer> <BS> <C-T>
nnoremap <buffer> o /'\l\{2,\}'<CR>
nnoremap <buffer> O ?'\l\{2,\}'<CR>
nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>
nnoremap <C-Tab> :bnext<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>
nnoremap <S-Tab> :bprevious<CR>

"enable conctext senseitve completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"mouse
if has("mouse")
    set mouse=a
endif

" Turn of highlighting after a search
map ,, :nohl

" always have some lines of text when scrolling
set scrolloff=5
set nu

"set tabs for python
set ts=4
set tabstop=4
set softtabstop=4 shiftwidth=4 expandtab

"setup 80chc highlight
"match ErrorMsg '\%>80v.\+'
"set cursorline

"lycosexplorer
set hidden

"show tabs as triangles
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"switch to the pastels theme
colorscheme pastels_coloration_v02
set noantialias

" For usung Base16
set background=dark
colorscheme base16-railscasts

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=0   ctermfg=3
highlight SpellBad     ctermbg=0   ctermfg=1

" For using solarized
set background=light
colorscheme solarized

"reset escape timeouts to reasonable times
set timeoutlen=300 ttimeoutlen=0

"hoping to fix the clipboard
set clipboard=unnamed

"airline
let g:airline_powerline_fonts = 1
set laststatus=2
set encoding=utf-8

"use bufferline to display inline buffers
let g:airline#extensions#bufferline#overwrite_variables = 0
" bufferline should *not* print out to the command line
let g:bufferline_echo = 0
let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''

"ctrlp options
let g:ctrlp_show_hidden = 1

"so you can type gq to reformat lines
set tw=80


"csv.vim options
" let g:csv_autocmd_arrange = 1

 function! VimuxSlimeIPy()
  call VimuxSendKeys("\%cpaste")
  call VimuxSendKeys("Enter")
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
  call VimuxSendText("\n--\n")
  call VimuxSendKeys("Enter")
 endfunction

 function! VimuxSlime()
  call VimuxSendKeys("Enter")
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
 endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <C-s> "vy :call VimuxSlimeIPy()<CR>
vmap <C-x> "vy :call VimuxSlime()<CR>

" Select current paragraph and send it to tmux
nmap <LocalLeader>vs vip<LocalLeader>vs<CR>

" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Prompt for a command to run
map <Leader>vo :call VimuxOpenRunner()<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>
