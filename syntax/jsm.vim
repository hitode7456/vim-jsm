" Vim syntax file
" Language:    JSM
" Maintainer:  Goro Yanagi <g-yanagi@marsflag.com>

if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'jsm'
endif

" Source HTML syntax
runtime! syntax/html.vim
unlet b:current_syntax

" Include JavaScript syntax
syn include @jsmJavaScript syntax/javascript.vim

syn match  jsmScript  "#.*$"  contains=@jsmJavaScript
syn region jsmExpr    start=/${/ keepend end=/}/ contains=@jsmJavaScript
syn match  jsmComment "##.*$"

" Redefine htmlTag so that it can contain jspExpr
syn clear  htmlTag
syn region htmlTag start=+<[^/%]+ end=+>+ contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster,javaScript,cssStyle,jsmScript,jsmExpr

hi def link htmlComment     Comment
hi def link htmlCommentPart Comment
hi def link jsmComment      htmlComment

if main_syntax == 'jsm'
  unlet main_syntax
endif

let b:current_syntax = "jsm"
