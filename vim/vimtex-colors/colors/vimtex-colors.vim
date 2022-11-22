let g:colors_name = 'vimtex-colors'

" BASIC colors
"> Window
    hi! Normal ctermfg=252 ctermbg=235
    hi! StatusLine cterm=reverse ctermbg=234 ctermfg=245
    hi! WarningMsg ctermbg=234 ctermfg=203
    hi! LineNr ctermbg=235 ctermfg=239
"> Cursor
    hi! CursorLine ctermbg=237 ctermfg=NONE
    hi! Cursor ctermbg=252 ctermfg=234
    hi! CursorLineNr cterm=NONE ctermbg=237
    hi! CursorColumn ctermbg=237 ctermfg=NONE
"> Spelling
    hi! SpellBad ctermbg=60 ctermfg=250 
    hi! SpellCap ctermbg=101 ctermfg=250 
    hi! SpellLocal ctermbg=101 ctermfg=252
    hi! SpellRare ctermbg=97 ctermfg=252
"> Other
    hi! MatchParen ctermbg=237 ctermfg=NONE
    hi! Visual ctermbg=237 ctermfg=NONE
   
" GENERAL colors
"> Delimiters
">> "[", "]" and "{", "}"
    hi! texDelim ctermfg=137
"> Special Char
">> "//", "&", etc.
    hi! SpecialChar ctermfg=140
"> Commands
">> "\command"
    hi! texCmd ctermfg=108
">> \command["opt"] and \command{"arg"}
    hi! texOpt ctermfg=110
    hi! texArg ctermfg=140

" PREAMBLE colors
"> Document Class
">> "\documentclass"
    hi! texCmdClass ctermfg=98
"> Packages
">> "\usepackage" and "\requirepackage"
    hi! texCmdPackage ctermfg=140
"> Includes
">> "\input", "\include" and "\includegraphics"
    hi! texCmdInput ctermfg=140
"> Newtheorem
">> "\newtheorem"
    hi! texCmdNewthm ctermfg=140
"> Options
">> \includegraphics["opt"] and \documentclass["opt"]
    hi! texFileOpt ctermfg=108
">> \usepackage["opt"] and \requirepackage["opt"]
    hi! texFilesOpt ctermfg=108
">> \newtheorem["opt"]
    hi! texNewthmOptCounter ctermfg=108
"> Arguments
">> \documentclass{"arg"} and \include{"arg"} 
    hi! texFileArg ctermfg=110
">> \usepackage{"arg"}
    hi! texFilesArg ctermfg=110
">> \newtheorem{"arg"}
    hi! texNewthmArgName ctermfg=110
    hi! texNewthmArgPrinted ctermfg=101

" TITLE PAGE colors
"> Title
">> "\title" and \title{"arg"}
    hi! texCmdTitle ctermfg=140
    hi! texTitleArg ctermfg=110
"> Author
">> "\author", \author["opt"] and \author{"arg"}
    hi! texCmdAuthor ctermfg=140
    hi! texAuthorOpt ctermfg=108
    hi! texAuthorArg ctermfg=110

" TEXT STRUCTURE colors
"> Section
">> "\section", "\subsection", and so on
    hi! texCmdPart ctermfg=110
">> \section{"arg"}, \subsection{"arg"}, and so on
    hi! texPartArgTitle ctermfg=223
"> Environment 
">> "\begin" and "\end"
    hi! texCmdEnv ctermfg=110
">> \begin{"arg"} and \end{"arg"}
    hi! texEnvArgName ctermfg=108
">> "\item" color
    hi! texCmdItem ctermfg=140
"> Reference
">> "\label" and "\cite" 
    hi! texCmdRef ctermfg=140
">> \label{"arg"} and \cite{"arg"}
    hi! texRefArg ctermfg=101

" MATH colors
"> Delimiters
">> "$", "$$", "\(", "\)", "\[" and "\]"
    hi! texMathDelimZone ctermfg=137
">> text between math delimiters
    hi! texMathZoneLI ctermfg=137
    hi! texMathZoneLD ctermfg=137
    hi! texMathZoneTI ctermfg=137
    hi! texMathZoneTD ctermfg=137
"> Equation Env
">> "\begin"{equation} and "\end"{equation}
    hi! texCmdMathEnv ctermfg=110
">> \begin{"equation"} and \end{"equation"}
    hi! texMathEnvArgName ctermfg=108
">> text inside equation environment
    hi! texMathZoneEnv ctermfg=137
    hi! texMathZone ctermfg=110
"> Operators
">> "+", "-", "=" and "/"
    hi! texMathOper ctermfg=137
">> "^" and "_"
    hi! texMathSub ctermfg=137
    hi! texMathSuper ctermfg=137
    hi! texMathSuperSub ctermfg=137
"> Tikzcd
"> Error
">> unmatched region endings
    hi! texMathError ctermfg=237 ctermbg=9
