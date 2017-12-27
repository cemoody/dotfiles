" Vim color file
" Converted from Textmate theme Pastels on Dark using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Pastels on Dark"

hi Cursor ctermfg=234 ctermbg=15 cterm=NONE guifg=#211e1e guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#4a3c4e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#343131 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#343131 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#343131 gui=NONE
hi LineNr ctermfg=244 ctermbg=236 cterm=NONE guifg=#7e7c7c guibg=#343131 gui=NONE
hi VertSplit ctermfg=240 ctermbg=240 cterm=NONE guifg=#575555 guibg=#575555 gui=NONE
hi MatchParen ctermfg=147 ctermbg=NONE cterm=underline guifg=#a1a1ff guibg=NONE gui=underline
hi StatusLine ctermfg=253 ctermbg=240 cterm=bold guifg=#dadada guibg=#575555 gui=bold
hi StatusLineNC ctermfg=253 ctermbg=240 cterm=NONE guifg=#dadada guibg=#575555 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#4a3c4e gui=NONE
hi IncSearch ctermfg=234 ctermbg=137 cterm=NONE guifg=#211e1e guibg=#ad9361 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=68 ctermbg=NONE cterm=NONE guifg=#6782d3 guibg=NONE gui=NONE
hi Folded ctermfg=240 ctermbg=234 cterm=NONE guifg=#555555 guibg=#211e1e gui=NONE

hi Normal ctermfg=253 ctermbg=234 cterm=NONE guifg=#dadada guibg=#211e1e gui=NONE
hi Boolean ctermfg=208 ctermbg=NONE cterm=bold guifg=#de8e30 guibg=NONE gui=bold
hi Character ctermfg=143 ctermbg=NONE cterm=NONE guifg=#afa472 guibg=NONE gui=NONE
hi Comment ctermfg=240 ctermbg=NONE cterm=NONE guifg=#555555 guibg=NONE gui=NONE
hi Conditional ctermfg=63 ctermbg=NONE cterm=bold guifg=#6969fa guibg=NONE gui=bold
hi Constant ctermfg=68 ctermbg=NONE cterm=NONE guifg=#6782d3 guibg=NONE gui=NONE
hi Define ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi DiffAdd ctermfg=253 ctermbg=64 cterm=bold guifg=#dadada guibg=#45810b gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8a0606 guibg=NONE gui=NONE
hi DiffChange ctermfg=253 ctermbg=23 cterm=NONE guifg=#dadada guibg=#213453 gui=NONE
hi DiffText ctermfg=253 ctermbg=24 cterm=bold guifg=#dadada guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=196 cterm=bold guifg=#fff9f9 guibg=#ff0000 gui=bold
hi WarningMsg ctermfg=231 ctermbg=196 cterm=bold guifg=#fff9f9 guibg=#ff0000 gui=bold
hi Float ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Keyword ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi Label ctermfg=137 ctermbg=NONE cterm=NONE guifg=#ad9361 guibg=NONE gui=NONE
hi NonText ctermfg=239 ctermbg=235 cterm=NONE guifg=#4f4d4d guibg=#2a2727 gui=NONE
hi Number ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=NONE
hi Operator ctermfg=74 ctermbg=NONE cterm=NONE guifg=#47b8d6 guibg=NONE gui=NONE
hi PreProc ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi Special ctermfg=253 ctermbg=NONE cterm=NONE guifg=#dadada guibg=NONE gui=NONE
hi SpecialKey ctermfg=239 ctermbg=236 cterm=NONE guifg=#4f4d4d guibg=#343131 gui=NONE
hi Statement ctermfg=63 ctermbg=NONE cterm=bold guifg=#6969fa guibg=NONE gui=bold
hi StorageClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi String ctermfg=137 ctermbg=NONE cterm=NONE guifg=#ad9361 guibg=NONE gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=253 ctermbg=NONE cterm=bold guifg=#dadada guibg=NONE gui=bold
hi Todo ctermfg=240 ctermbg=NONE cterm=inverse,bold guifg=#555555 guibg=NONE gui=inverse,bold
hi Test ctermfg=191 ctermbg=NONE cterm=NONE guifg=#555555 guibg=NONE gui=NONE
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=63 ctermbg=NONE cterm=bold guifg=#6969fa guibg=NONE gui=bold
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=68 ctermbg=NONE cterm=NONE guifg=#6782d3 guibg=NONE gui=NONE
hi rubyConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=137 ctermbg=NONE cterm=NONE guifg=#ad9361 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi rubyInclude ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=241 ctermbg=NONE cterm=NONE guifg=#666666 guibg=NONE gui=NONE
hi rubyEscape ctermfg=143 ctermbg=NONE cterm=NONE guifg=#afa472 guibg=NONE gui=NONE
hi rubyControl ctermfg=63 ctermbg=NONE cterm=bold guifg=#6969fa guibg=NONE gui=bold
hi rubyClassVariable ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi rubyOperator ctermfg=74 ctermbg=NONE cterm=NONE guifg=#47b8d6 guibg=NONE gui=NONE
hi rubyException ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=240 ctermbg=NONE cterm=NONE guifg=#555555 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=143 ctermbg=NONE cterm=NONE guifg=#afa472 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi yamlAlias ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=137 ctermbg=NONE cterm=NONE guifg=#ad9361 guibg=NONE gui=NONE
hi cssURL ctermfg=143 ctermbg=NONE cterm=NONE guifg=#c1c144 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a1a1ff guibg=NONE gui=NONE
hi cssColor ctermfg=68 ctermbg=NONE cterm=NONE guifg=#6782d3 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=31 ctermbg=NONE cterm=NONE guifg=#2e759c guibg=NONE gui=NONE
hi cssClassName ctermfg=220 ctermbg=NONE cterm=NONE guifg=#edca06 guibg=NONE gui=NONE
hi cssValueLength ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=89 ctermbg=NONE cterm=NONE guifg=#9b2e4d guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
