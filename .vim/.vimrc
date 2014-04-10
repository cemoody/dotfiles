"pathogen
call pathogen#infect()
call pathogen#helptags()

"vim behavoir
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set pastetoggle=<c-p>
nnoremap ; :

"synatx on
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
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

"colorscheme
set t_Co=256
set number
set background=dark
colorscheme solarized
if &diff
    colorscheme evening
    set cursorline
    hi CursorLine cterm=NONE ctermbg=black guibg=#202020
endif
hi SyntasticError cterm=bold,undercurl ctermfg=None ctermbg=NONE 
hi Normal ctermfg=gray "the normal font is way too dim 

"switch to the pastels theme
colorscheme pastels_coloration_v02
set noantialias

"mouse
if has("mouse")
    set mouse=a
endif


"Staus/Powerline
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" Turn of highlighting after a search
map ,, :nohl


" always have some lines of text when scrolling
set scrolloff=5

"vimdiff needs a ddif color scheme
"highlight every line

"set tabs for python
set ts=4
set tabstop=4
set softtabstop=4 shiftwidth=4 expandtab

"setup 80chc highlight
match ErrorMsg '\%>80v.\+'
set cursorline

"lycosexplorer
set hidden

"show tabs as triangles
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

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

"reset escape timeouts to reasonable times
set timeoutlen=300 ttimeoutlen=0

"hoping to fix the clipboard
set clipboard=unnamed
