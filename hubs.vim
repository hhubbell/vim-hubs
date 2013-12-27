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
    " --------------------
    " SPECIFIC COLORS
    " --------------------
    let s:cream         = "#DFCFAF"
    let s:gray          = "#EDEDED"
    let s:red           = "#CC6666"
    let s:orange        = "#DE935F"
    let s:yellow        = "#F0C674"
    let s:green         = "#5F9C6F"
    let s:light_blue    = "#B6DAF2"
    let s:blue          = "#3498DB"
    let s:purple        = "#9B59B6"


    " --------------------
    " OTHER
    " --------------------
    let s:v_mode        = "gui"
    let s:background    = "#202020"
    let s:foreground    = "#C5C8C6"
    let s:var           = "#8ABEB7"
    "let s:selection     = 
    "let s:line          =
    let s:comment       = s:green

endif

" ------------------------------
" ASSIGN COLORS
" ------------------------------
" Alphabetized
exe "hi Boolean         guifg=".s:red
exe "hi Character       guifg=".s:red."                                     gui=bold"
exe "hi Comment         guifg=".s:comment."                                 gui=italic"
exe "hi Conditional     guifg=".s:orange."                                  gui=bold"
exe "hi Cursor          guifg=".s:background."  guibg=".s:foreground."      gui=bold"
" debug
exe "hi Define          guifg=".s:foreground."                              gui=bold"
exe "hi Delimiter       guifg=".s:gray
" diffadd
" diffchange
" diffdelete
" difftext
" directory
" errormsg
" exception
exe "hi Float           guifg=".s:purple
" folded column
" folded
exe "hi Function        guifg=".s:yellow
exe "hi Identifier      guifg=".s:cream
" incsearch
exe "hi Keyword         guifg=".s:orange
exe "hi Label           guifg=".s:orange
exe "hi LineNr          guifg=".s:light_blue."  guibg=".s:background
" macro
" modemsg
" moremsg
exe "hi Normal          guifg=".s:foreground."  guibg=".s:background
exe "hi Number          guifg=".s:blue
exe "hi Operator        guifg=".s:cream
"exe \"hi PreCondit       guifg="
exe "hi PreProc         guifg=".s:orange."                                  gui=bold"
exe "hi Special         guifg=".s:yellow."                                  gui=bold"
exe "hi SpecialChar     guifg=".s:red."                                     gui=bold"
exe "hi SpecialComment  guifg=".s:comment."                                 gui=bold"
exe "hi String          guifg=".s:red
exe "hi Tag             guifg=".s:yellow
exe "hi Title           guifg=".s:foreground."                              gui=bold"
exe "hi Type            guifg=".s:foreground
"Missing many more


