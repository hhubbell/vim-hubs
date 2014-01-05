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

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="hubs"

" ------------------------------
" DEFINITIONS
" ------------------------------
if has("gui_running")
    let s:v_mode        = "gui"

    " COLORS
    let s:WHITE         = "#C5C8C6"
    let s:CREAM         = "#DFCFAF"
    let s:GRAY          = "#EDEDED"
    let s:BLACK         = "#202020"
    let s:LIGHT_RED     = "#CC6666"
    let s:DARK_RED      = "#A54242"
    let s:ORANGE        = "#DE935F"
    let s:YELLOW        = "#F0C674"
    let s:LIGHT_GREEN   = "#96D6A6"
    let s:DARK_GREEN    = "#5F9C6F"
    let s:LIGHT_BLUE    = "#5F819D"
    let s:DARK_BLUE     = "#81A2BE"
    let s:LIGHT_VIOLET  = "#85678F"
    let s:DARK_VIOLET   = "#B294BB"
    let s:LIGHT_AQUA    = "#5E8D87"
endif

" ------------------------------
" ASSIGN COLORS
" ------------------------------
" Alphabetized
"
"       CLASS               FOREGROUND                  BACKGROUND              ADDITIONAL
" --------------------------------------------------------------------------------------------
exe "hi Boolean         guifg=".s:LIGHT_RED
exe "hi Character       guifg=".s:LIGHT_RED."                                   gui=bold"
exe "hi Comment         guifg=".s:DARK_GREEN."                                  gui=italic"
exe "hi Conditional     guifg=".s:ORANGE."                                      gui=bold"
exe "hi Cursor          guifg=".s:BLACK."           guibg=".s:WHITE."           gui=bold"
" debug
exe "hi Define          guifg=".s:WHITE."                                       gui=bold"
exe "hi Delimiter       guifg=".s:GRAY
" diffadd
" diffchange
" diffdelete
" difftext
" directory
" errormsg
" exception
exe "hi Float           guifg=".s:LIGHT_VIOLET
" folded column
" folded
exe "hi Function        guifg=".s:YELLOW
exe "hi Identifier      guifg=".s:CREAM
" incsearch
exe "hi Keyword         guifg=".s:ORANGE
exe "hi Label           guifg=".s:ORANGE
exe "hi LineNr          guifg=".s:LIGHT_AQUA."      guibg=".s:BLACK
" macro
" modemsg
" moremsg
exe "hi Normal          guifg=".s:WHITE."           guibg=".s:BLACK
exe "hi Number          guifg=".s:DARK_BLUE
exe "hi Operator        guifg=".s:CREAM
"exe \"hi PreCondit       guifg="
exe "hi PreProc         guifg=".s:ORANGE."                                    gui=bold"
exe "hi Special         guifg=".s:YELLOW."                                    gui=bold"
exe "hi SpecialChar     guifg=".s:LIGHT_RED."                                 gui=bold"
exe "hi SpecialComment  guifg=".s:LIGHT_GREEN."                               gui=bold"
exe "hi String          guifg=".s:LIGHT_RED
exe "hi Tag             guifg=".s:YELLOW
exe "hi Title           guifg=".s:WHITE."                                     gui=bold"
exe "hi Type            guifg=".s:WHITE
"Missing many more


