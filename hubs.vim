"Vim color file
"
" File:             hubs.vim
" URL:              https://github.com/hhubbell/vim-hubs.git
" Maintainer:       Harry Hubbell (hhubbell@uvm.edu)
" Version:          2.0.1
"
" A dark colorscheme with the right amount of contrast - Not too hard on the
" eyes while still being of use.
"
" Guidelines to follow while designing this colorscheme
"       Strings, chars, boolean - red
"       Comments                - green
"       Numbers                 - blue
"       Functions               - yellow
"
" -------------------------
" Hex Lookup Guide
" -------------------------
"       WHITE       #C5C8C6     (Foreground)
"       CREAM       #DFCFAF
"       GRAY        #EDEDED
"       BLACK       #202020     (Background)
"       LIGHT RED   #CC6666
"       DARK RED    #A54242
"       ORANGE      #DE935F
"       YELLOW      #F0C674
"       LIGHT GREEN #96D6A6
"       DARK GREEN  #5F9C6F
"       LIGHT BLUE  #5F819D
"       DARK BLUE   #81A2BE
"       LIGHT VIOLET#85678F
"       DARK VIOLET #B294BB
"       LIGHT AQUA  #5E8D87
" -------------------------
"
" -----------------------------------------------------------------------------------
" THE FOLLOWING IS TAKEN FROM THE VIM DOCS
" The group name color assignments are ordered in the following manner
" -----------------------------------------------------------------------------------
" NAMING CONVENTIONS		    *group-name* *{group-name}* *E669* *W18*
"
" A syntax group name is to be used for syntax items that match the same kind of
" thing.  These are then linked to a highlight group that specifies the color.
" A syntax group name doesn't specify any color or attributes itself.
"
" The name for a highlight or syntax group must consist of ASCII letters, digits
" and the underscore.  As a regexp: '[a-zA-Z0-9_]*'
"
" To be able to allow each user to pick his favorite set of colors, there must
" be preferred names for highlight groups that are common for many languages.
" These are the suggested group names (if syntax highlighting works properly
" you can see the actual color, except for 'Ignore'):
"
"	*Comment	any comment
"
"	*Constant	any constant
"	 String		a string constant: 'this is a string'
"	 Character	a character constant: 'c', '\n'
"	 Number		a number constant: 234, 0xff
"	 Boolean	a boolean constant: TRUE, false
"	 Float		a floating point constant: 2.3e10
"
"	*Identifier	any variable name
"	 Function	function name (also: methods for classes)
"
"	*Statement	any statement
"    Conditional	if, then, else, endif, switch, etc.
"	 Repeat		for, do, while, etc.
"	 Label		case, default, etc.
"	 Operator	'sizeof', '+', '*', etc.
"	 Keyword	any other keyword
"	 Exception	try, catch, throw
"
"	*PreProc	generic Preprocessor
"	 Include	preprocessor #include
"	 Define		preprocessor #define
"	 Macro		same as Define
"	 PreCondit	preprocessor #if, #else, #endif, etc.
"
"	*Type		int, long, char, etc.
"	 StorageClass	static, register, volatile, etc.
"	 Structure	struct, union, enum, etc.
"	 Typedef	A typedef
"
"	*Special	any special symbol
"	 SpecialChar	special character in a constant
"	 Tag		you can use CTRL-] on this
"	 Delimiter	character that needs attention
"	 SpecialComment	special things inside a comment
"	 Debug		debugging statements
"
"	*Underlined	text that stands out, HTML links
"
"	*Ignore		left blank, hidden  |hl-Ignore|
"
"	*Error		any erroneous construct
"
"	*Todo		anything that needs extra attention; mostly the
"			keywords TODO FIXME and XXX
"
" The names marked with * are the preferred groups; the others are minor groups.
" For the preferred groups, the 'syntax.vim' file contains default highlighting.
" The minor groups are linked to the preferred groups, so they get the same
" highlighting.  You can override these defaults by using ':highlight' commands
" after sourcing the 'syntax.vim' file.

" Note that highlight group names are not case sensitive.  'String' and 'string'
" can be used for the same group.

" The following names are reserved and cannot be used as a group name:
"	NONE   ALL   ALLBUT   contains	 contained


"							*hl-Ignore*
" When using the Ignore group, you may also consider using the conceal
" mechanism.  See |conceal|.
"
" -----------------------------------------------------------------------------------
" ADDITIONAL DOCUMENTATION
" -----------------------------------------------------------------------------------
" g:hubs_NoBold:
"   ABOUT:
"       An option that can be implemented if the selected font is too small or
"       does not render bold fonts well.  The following fonts are normally bold:
"       
"           Cursor              Character           Constant            
"           Conditional         Repeat              Exception                 
"           PreCondit           PreProc             Define              
"           Macro               Type                TypeDef
"           StorageClass        Structure           MatchParen          
"           SpecialChar         SpecialComment      SpellCap        
"           Title
"
"       Reference the above VIM DOCS to see what these syntax groups highlight
"
"   TO USE:
"       Add the following line to your .vimrc file, before your colorcheme
"       declaration.  This is important! The option will not work if it is set
"       after.
"           
"           let g:hubs_NoBold=1
"
"
" g:hubs_HighContrast:
"   ABOUT:
"       An option that can be implemented if the user prefers a darker
"       background.  This is a user preference - for instance, on some
"       displays (mainly laptops) the darker background can seem too dark,
"       while on newer LED displays the extra contrast looks much better.
"
"   TO USE:
"       Add the following line to your .vimrc file.
"
"           let g:hus_HighContrast=1
"
" -----------------------------------------------------------------------------------

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

" ------------------------------
" GLOBALS
" ------------------------------
if ! exists("g:hubs_NoBold")
    let g:hubs_NoBold=0
endif

if ! exists("g:hubs_HighContrast")
    let g:hubs_HighContrast=0
endif

if ! exists("g:hubs_MatchTrailingWhitespace")
    let g:hubs_MatchTrailingWhitespace=0
endif

let g:colors_name="hubs"

" ------------------------------
" DEFINITIONS
" ------------------------------
if has('gui_running')
    " COLORS
    let s:WHITE         = "#C5C8C6"
    let s:CREAM         = "#DFCFAF"
    let s:LIGHT_GRAY    = "#7D858D"
    let s:GRAY          = "#666666"
    let s:DARK_GRAY     = "#2A2A2A"
    let s:BLACK         = "#1F1F1F"
    let s:LIGHT_RED     = "#CC6666"
    let s:DARK_RED      = "#A54242"
    let s:ORANGE        = "#DE935F"
    let s:YELLOW        = "#F0C674"
    let s:LIGHT_GREEN   = "#96D6A6"
    let s:DARK_GREEN    = "#5F9C6F"
    let s:GRAY_GREEN    = "#618E6D"
    let s:LIGHT_BLUE    = "#81A2BE"
    let s:DARK_BLUE     = "#5F819D"
    let s:STEEL_BLUE    = "#B0C4DE"
    let s:DARK_VIOLET   = "#85678F"
    let s:LIGHT_VIOLET  = "#B294BB"
    let s:LIGHT_AQUA    = "#8ABEB7"
    let s:DARK_AQUA     = "#5E8D87"

    " CONTEXT
    let s:CTX_FG        = "guifg"
    let s:CTX_BG        = "guibg"
    let s:CTX_DEC       = "gui"

else 
    " FOR TERMINAL VIM
    " This uses the translateColor.py script
    " COLORS
    let s:WHITE         = "251"
    let s:CREAM         = "187"
    let s:LIGHT_GRAY    = "102"
    let s:GRAY          = "241"
    let s:DARK_GRAY     = "235"
    let s:BLACK         = "234"
    let s:LIGHT_RED     = "167"
    let s:DARK_RED      = "131"
    let s:ORANGE        = "173"
    let s:YELLOW        = "222"
    let s:LIGHT_GREEN   = "115"
    let s:DARK_GREEN    = "71"
    let s:GRAY_GREEN    = "65"
    let s:LIGHT_BLUE    = "109"
    let s:DARK_BLUE     = "67"
    let s:STEEL_BLUE    = "152"
    let s:DARK_VIOLET   = "96"
    let s:LIGHT_VIOLET  = "139"
    let s:LIGHT_AQUA    = "109"
    let s:DARK_AQUA     = "66"

    " CONTEXT
    let s:CTX_FG        = "ctermfg"
    let s:CTX_BG        = "ctermbg"
    let s:CTX_DEC       = "cterm"

endif

let s:COMMENT = s:DARK_GREEN
let s:FOREGROUND = s:WHITE

if g:hubs_HighContrast==0
    let s:BACKGROUND = s:DARK_GRAY
else
    let s:BACKGROUND = s:BLACK
endif


" ------------------------------
" ADDITIONAL SYNTAX RULES
" ------------------------------
syn match Braces    display '[{}()\[\]]'
syn match Ref       display '[.]'

" ------------------------------------------------------------------------------------------------
"                                       ASSIGN COLORS
" ------------------------------------------------------------------------------------------------
" CLASS                 FOREGROUND                      BACKGROUND                      ADDITIONAL
" ------------------------------------------------------------------------------------------------

" --- WORKSPACE ----------------
exe "hi Cursor          ".s:CTX_FG."=".s:BLACK."        ".s:CTX_BG."=".s:WHITE
exe "hi LineNr          ".s:CTX_FG."=".s:GRAY."         ".s:CTX_BG."=".s:DARK_GRAY
exe "hi NonText         ".s:CTX_FG."=".s:BACKGROUND
exe "hi Normal          ".s:CTX_FG."=".s:FOREGROUND."   ".s:CTX_BG."=".s:BACKGROUND
exe "hi Visual          ".s:CTX_FG."=".s:BACKGROUND."   ".s:CTX_BG."=".s:FOREGROUND."   ".s:CTX_DEC."=none"
exe "hi VisualNOS       ".s:CTX_FG."=".s:BACKGROUND."   ".s:CTX_BG."=".s:FOREGROUND."   ".s:CTX_DEC."=none"

" --- COMMENT ------------------
exe "hi Comment         ".s:CTX_FG."=".s:COMMENT
exe "hi Todo            ".s:CTX_FG."=".s:BACKGROUND."   ".s:CTX_BG."=".s:DARK_GREEN      

" --- VARIABLE TYPES -----------
exe "hi Boolean         ".s:CTX_FG."=".s:LIGHT_RED
exe "hi Character       ".s:CTX_FG."=".s:LIGHT_RED
exe "hi Constant        ".s:CTX_FG."=".s:LIGHT_BLUE
exe "hi Float           ".s:CTX_FG."=".s:DARK_BLUE
exe "hi Number          ".s:CTX_FG."=".s:DARK_BLUE
exe "hi String          ".s:CTX_FG."=".s:LIGHT_RED

" --- IDENTIFIER ---------------
exe "hi Function        ".s:CTX_FG."=".s:YELLOW  
exe "hi Identifier      ".s:CTX_FG."=".s:WHITE

" --- STATEMENT ----------------
exe "hi Conditional     ".s:CTX_FG."=".s:ORANGE
exe "hi Statement       ".s:CTX_FG."=".s:YELLOW."                                       ".s:CTX_DEC."=none"
exe "hi Repeat          ".s:CTX_FG."=".s:ORANGE
exe "hi Label           ".s:CTX_FG."=".s:YELLOW."                                       ".s:CTX_DEC."=underline"
exe "hi Operator        ".s:CTX_FG."=".s:YELLOW
exe "hi Keyword         ".s:CTX_FG."=".s:YELLOW    
exe "hi Exception       ".s:CTX_FG."=".s:YELLOW

" --- PREPROC ------------------
exe "hi PreCondit       ".s:CTX_FG."=".s:LIGHT_VIOLET
exe "hi PreProc         ".s:CTX_FG."=".s:LIGHT_VIOLET
exe "hi Include         ".s:CTX_FG."=".s:LIGHT_VIOLET
exe "hi Define          ".s:CTX_FG."=".s:LIGHT_VIOLET
exe "hi Macro           ".s:CTX_FG."=".s:LIGHT_VIOLET

" --- TYPE ---------------------
exe "hi Type            ".s:CTX_FG."=".s:LIGHT_AQUA."                                   ".s:CTX_DEC."=none"
exe "hi Typedef         ".s:CTX_FG."=".s:LIGHT_AQUA
exe "hi StorageClass    ".s:CTX_FG."=".s:DARK_AQUA
exe "hi Structure       ".s:CTX_FG."=".s:DARK_AQUA

" --- SPECIAL ------------------
exe "hi Debug           ".s:CTX_FG."=".s:LIGHT_GREEN."                                  ".s:CTX_DEC."=underline"
exe "hi Delimiter       ".s:CTX_FG."=".s:LIGHT_GRAY
exe "hi MatchParen      ".s:CTX_FG."=".s:BACKGROUND."    ".s:CTX_BG."=".s:DARK_AQUA
exe "hi Special         ".s:CTX_FG."=".s:LIGHT_RED
exe "hi SpecialChar     ".s:CTX_FG."=".s:LIGHT_RED
exe "hi SpecialComment  ".s:CTX_FG."=".s:COMMENT
exe "hi SpecialKey      ".s:CTX_FG."=".s:LIGHT_GREEN
exe "hi Tag             ".s:CTX_FG."=".s:YELLOW

" --- SPELLING -----------------
exe "hi SpellBad        ".s:CTX_FG."=".s:WHITE."        ".s:CTX_BG."=".s:DARK_RED."     ".s:CTX_DEC."=underline"
exe "hi SpellCap        ".s:CTX_FG."=".s:WHITE."        ".s:CTX_BG."=".s:DARK_RED."     ".s:CTX_DEC."=underline"

" --- DIFF ---------------------
exe "hi DiffFile        ".s:CTX_FG."=".s:LIGHT_GRAY
exe "hi DiffNewFile     ".s:CTX_FG."=".s:BACKGROUND."   ".s:CTX_BG."=".s:DARK_GREEN
exe "hi DiffOldFile     ".s:CTX_FG."=".s:BACKGROUND."   ".s:CTX_BG."=".s:LIGHT_RED
exe "hi DiffAdded       ".s:CTX_FG."=".s:DARK_GREEN
exe "hi DiffRemoved     ".s:CTX_FG."=".s:LIGHT_RED
exe "hi DiffChange      ".s:CTX_FG."=".s:YELLOW
exe "hi DiffText        ".s:CTX_FG."=".s:BACKGROUND."   ".s:CTX_BG."=".s:YELLOW
exe "hi DiffLine        ".s:CTX_FG."=".s:DARK_AQUA
" ------------------------------

" --- UNDERLINED ---------------
exe "hi Underlined      ".s:CTX_FG."=".s:LIGHT_BLUE."                                   ".s:CTX_DEC."=underline"

" --- ERROR --------------------
exe "hi ErrorMsg        ".s:CTX_FG."=".s:WHITE."        ".s:CTX_BG."=".s:DARK_RED

" --- HTML SPECIFIC ------------
exe "hi htmlArg         ".s:CTX_FG."=".s:DARK_AQUA
exe "hi htmlTag         ".s:CTX_FG."=".s:LIGHT_GRAY
exe "hi htmlTagName     ".s:CTX_FG."=".s:YELLOW
exe "hi htmlEndTag      ".s:CTX_FG."=".s:LIGHT_GRAY
exe "hi htmlSpecialTagName  ".s:CTX_FG."=".s:YELLOW

" TODO UNKOWN
exe "hi Title           ".s:CTX_FG."=".s:WHITE."                                        ".s:CTX_DEC."=none"
exe "hi Directory       ".s:CTX_FG."=".s:DARK_BLUE
" incsearch
" folded column
" folded
" modemsg
" moremsg
"Missing many more


" ------------------------------
" SET BOLDS IF ALLOWED
" ------------------------------
if g:hubs_NoBold==0
    exe "hi Cursor          ".s:CTX_DEC."=bold"
    exe "hi Character       ".s:CTX_DEC."=bold"
    exe "hi Constant        ".s:CTX_DEC."=bold"
    exe "hi Conditional     ".s:CTX_DEC."=bold"
    exe "hi Define          ".s:CTX_DEC."=bold"
    exe "hi DiffChange      ".s:CTX_DEC."=bold"
    exe "hi Directory       ".s:CTX_DEC."=bold"
    exe "hi Exception       ".s:CTX_DEC."=bold"
    exe "hi MatchParen      ".s:CTX_DEC."=bold"
    exe "hi Macro           ".s:CTX_DEC."=bold"
    exe "hi PreCondit       ".s:CTX_DEC."=bold"
    exe "hi PreProc         ".s:CTX_DEC."=bold"
    exe "hi Repeat          ".s:CTX_DEC."=bold"
    exe "hi Special         ".s:CTX_DEC."=bold"
    exe "hi SpecialChar     ".s:CTX_DEC."=bold"
    exe "hi SpecialComment  ".s:CTX_DEC."=bold"
    exe "hi SpellCap        ".s:CTX_DEC."=bold"
    exe "hi StorageClass    ".s:CTX_DEC."=bold"
    exe "hi Structure       ".s:CTX_DEC."=bold"
    exe "hi Title           ".s:CTX_DEC."=bold"
    exe "hi Todo            ".s:CTX_DEC."=bold"
    exe "hi Type            ".s:CTX_DEC."=bold"
    exe "hi TypeDef         ".s:CTX_DEC."=bold"
endif

if g:hubs_MatchTrailingWhitespace==1
    exe "hi TrailingWhitespace ".s:CTX_BG."=".s:DARK_RED
    match TrailingWhitespace /\s\+$/
endif

" ----------------------------------------
" TARGET SPECIFIC LANGUAGES
" ----------------------------------------
" --- GENERAL ------------------
hi link Braces              Delimiter
hi link Ref                 Operator

" --- XML SPECIFIC -------------
hi link xmlAttrib           htmlArg
hi link xmlTag              htmlTag
hi link xmlTagName          htmlTagName
hi link xmlEndTag           htmlEndTag

" --- PHP SPECIFIC -------------
hi link phpDefine           TypeDef
hi link phpFunctions        Function
hi link phpMemberSelector   Operator
hi link phpMethods          Function
hi link phpOperator         Operator
hi link phpRelation         Operator
hi link phpVarSelector      Operator

" --- CSS SPECIFIC -------------
hi link cssBraces           Braces

" --- JAVASCRIPT SPECIFIC ------
hi link javaScriptBraces    Braces
hi link javaScriptGlobal    Structure
hi link javaScriptIdentifier Type
hi link javascriptMember    Structure
hi link javaScriptNumber    Number
hi link javaScriptOperator  Operator
hi link javaScriptParens    Braces
hi link javaScriptType      Type
