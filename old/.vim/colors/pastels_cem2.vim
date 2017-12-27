" Default GUI Colours
let s:foreground = "c5c8c6"
let s:background = "1d1f21"
let s:selection = "373b41"
let s:line = "282a2e"
let s:comment = "969896"
let s:background = "303030"
let s:window = "5e5e5e"
let s:line = "3a3a3a"
let s:selection = "585858"

let s:red = "cc6666"
let s:orange = "de935f"
let s:yellow = "f0c674"
let s:green = "b5bd68"
let s:aqua = "8abeb7"
let s:blue = "81a2be"
let s:purple = "b294bb"
let s:window = "4d5057"

set background=dark
hi clear
syntax reset

let g:colors_name = "pastels_cem2"

"categorized into major and minor groups
hi Normal ctermfg=s:foreground ctermbg=s:background
exec "hi Comment ctermfg=".s:comment." ctermbg=NONE"
exec "hi Normal  ctermfg=".s:foreground." ctermbg=".s:background

"hi Constant 
"hi Identifier
"hi Statement
"hi PreProc
"hi Type
"hi Special
"hi Underlined
"hi Ignore
"hi Error
"hi Todo
