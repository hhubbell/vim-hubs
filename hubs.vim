"Vim color file
"
" File:             hubs.vim
" URL:              https://github.com/hhubbell/vim-hubs.git
" Maintainer:       Harry Hubbell (hhubbell@uvm.edu)
" Version:          0.1
" License:          Mids
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
" -----------------------------------------------------------------------------------
"
set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="hubs"

" ------------------------------
" DEFINITIONS
" ------------------------------
if has('gui_running')
    " FOR GUI VIM
    let s:v_mode        = "gui"

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
else 
    " FOR TERMINAL VIM
    let s:v_mode        = "terminal"

    " COLORS
    let s:WHITE         = "251"
    let s:CREAM         = "#DFCFAF"
    let s:LIGHT_GRAY    = "243"
    let s:GRAY          = "241"
    let s:DARK_GRAY     = "235"
    let s:BLACK         = "234"
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
endif

" CONST
let s:FOREGROUND    = s:WHITE
let s:BACKGROUND    = s:DARK_GRAY
let s:COMMENT       = s:DARK_GREEN

" ------------------------------
" ADDITIONAL SYNTAX RULES
" ------------------------------
" Some languages do not highlight braces, or operators
" IT WORKS!
syn match Braces    display '[{}()\[\]]'
syn match JRef      display '[.]'

" ------------------------------
" ASSIGN COLORS
" ------------------------------
"
"       CLASS               FOREGROUND                  BACKGROUND              ADDITIONAL
" --------------------------------------------------------------------------------------------
"
" --- WORKSPACE ----------------
exe "hi Cursor          guifg=".s:BLACK."           guibg=".s:WHITE."           gui=bold"
exe "hi LineNr          guifg=".s:GRAY."            guibg=".s:BACKGROUND
exe "hi NonText         guifg=".s:BACKGROUND
exe "hi Normal          guifg=".s:FOREGROUND."      guibg=".s:BACKGROUND
exe "hi Visual          guifg=".s:BACKGROUND."      guibg=".s:FOREGROUND."      gui=none"
exe "hi VisualNOS       guifg=".s:BACKGROUND."      guibg=".s:FOREGROUND."      gui=none"
" ------------------------------
"
" --- COMMENT ------------------
exe "hi Comment         guifg=".s:COMMENT."                                     gui=italic"
" ------------------------------
"
" --- VARIABLE TYPES -----------
exe "hi Boolean         guifg=".s:LIGHT_RED
exe "hi Character       guifg=".s:LIGHT_RED."                                   gui=bold"
exe "hi Constant        guifg=".s:LIGHT_BLUE."                                  gui=bold"
exe "hi Float           guifg=".s:DARK_BLUE
exe "hi Number          guifg=".s:DARK_BLUE
exe "hi String          guifg=".s:LIGHT_RED
" ------------------------------
"
" --- IDENTIFIER ---------------
exe "hi Function        guifg=".s:YELLOW  
exe "hi Identifier      guifg=".s:CREAM
" ------------------------------
"
" --- STATEMENT ----------------
exe "hi Conditional     guifg=".s:ORANGE."                                      gui=bold"
exe "hi Statement       guifg=".s:YELLOW."                                      gui=none"
exe "hi Repeat          guifg=".s:ORANGE."                                      gui=bold"
exe "hi Label           guifg=".s:YELLOW."                                      gui=underline"
exe "hi Operator        guifg=".s:YELLOW
exe "hi Keyword         guifg=".s:YELLOW    
exe "hi Exception       guifg=".s:YELLOW."                                      gui=bold"
"-------------------------------
"
" --- PREPROC ------------------
exe "hi PreCondit       guifg=".s:LIGHT_VIOLET."                                gui=bold"
exe "hi PreProc         guifg=".s:LIGHT_VIOLET."                                gui=bold"
exe "hi Include         guifg=".s:LIGHT_VIOLET
exe "hi Define          guifg=".s:LIGHT_VIOLET."                                gui=bold"
exe "hi Macro           guifg=".s:LIGHT_VIOLET."                                gui=bold"
" ------------------------------
"
" --- TYPE ---------------------
exe "hi Type            guifg=".s:LIGHT_AQUA."                                  gui=bold"
exe "hi Typedef         guifg=".s:LIGHT_AQUA."                                  gui=bold"
exe "hi StorageClass    guifg=".s:DARK_AQUA."                                   gui=bold"
exe "hi Structure       guifg=".s:DARK_AQUA."                                   gui=bold"
" ------------------------------
"
" --- SPECIAL ------------------
exe "hi Debug           guifg=".s:LIGHT_GREEN."                                 gui=underline"
exe "hi Delimiter       guifg=".s:LIGHT_GRAY
exe "hi MatchParen      guifg=".s:STEEL_BLUE."      guibg=".s:BLACK."           gui=bold"
exe "hi Special         guifg=".s:YELLOW                              
exe "hi SpecialChar     guifg=".s:LIGHT_RED."                                   gui=bold"
exe "hi SpecialComment  guifg=".s:COMMENT."                                     gui=bold,italic"
exe "hi SpecialKey      guifg=".s:LIGHT_GREEN
exe "hi Tag             guifg=".s:YELLOW
hi link Braces          Delimiter
" ------------------------------
"
" --- SPELLING -----------------
exe "hi SpellBad        guifg=".s:WHITE."           guibg=".s:DARK_RED."        gui=underline"
exe "hi SpellCap        guifg=".s:WHITE."           guibg=".s:DARK_RED."        gui=bold,underline"
" ------------------------------
"
" --- DIFF ---------------------
exe "hi DiffAdd         guifg=".s:BLACK."           guibg=".s:LIGHT_GREEN
exe "hi DiffChange      guifg=".s:BLACK."           guibg=".s:YELLOW
exe "hi DiffDelete      guifg=".s:BLACK."           guibg=".s:LIGHT_RED
" difftext

" ------------------------------
"
" --- UNDERLINED ---------------
exe "hi Underlined      guifg=".s:LIGHT_BLUE."                                  gui=underline"
" ------------------------------
"
" --- ERROR --------------------
exe "hi ErrorMsg        guifg=".s:WHITE."           guibg=".s:DARK_RED."        gui=bold"
" ------------------------------
"
" --- HTML SPECIFIC ------------
exe "hi htmlTag         guifg=".s:LIGHT_GRAY
exe "hi htmlTagName     guifg=".s:YELLOW
exe "hi htmlEndTag      guifg=".s:LIGHT_GRAY
exe "hi htmlSpecialTagName  guifg=".s:YELLOW
" ------------------------------
"
" --- PHP SPECIFIC -------------
hi link phpDefine       TypeDef
hi link phpFunctions    Function
hi link phpMemberSelector   Operator
hi link phpMethods      Function
hi link phpOperator     Operator
hi link phpRelation     Operator
hi link phpVarSelector  Identifier
" ------------------------------
"
" --- JAVA SPECIFIC ------------
hi link JRef            Operator
" ------------------------------

" TODO UNKOWN
exe "hi Title           guifg=".s:WHITE."                                       gui=bold"

" directory
" incsearch
" folded column
" folded

" modemsg
" moremsg

"Missing many more


