"Vim color file
"
" File:             hubs.vim
" URL:              https://github.com/hhubbell/?
" Maintainer:       Harry Hubbell (hhubbell@uvm.edu)
" Version:          0.1
" License:          Mids
"
" A dark colorscheme that provides more contrast that Zenburn yet isn't 
" too colorful

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
    let s:red           = "#EA6153"
    let s:orange        = "#E67E22"
    let s:yellow        = "#F1C40F"
    let s:green         = "#27AE60"
    let s:blue          = "#3498DB"
    let s:purple        = "#9B59B6"


    " --------------------
    " OTHER
    " --------------------
    let s:mode          = "gui"
    let s:background    = "#1D1F21"
    let s:foreground    = "#C5C8C6"
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
exe "hi Conditional     guifg=".s:orange
exe "hi Cursor          guifg=".s:background."  guibg=".s:foreground."      gui=bold"
" debug
" define
" delimiter
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
" identifier
" incsearch
" keyword
" label
exe "hi LineNr          guifg=".s:blue."        guibg=".s:background
" macro
" modemsg
" moremsg
exe "hi Normal          guifg=".s:foreground."  guibg=".s:background
exe "hi Number          guifg=".s:blue
exe "hi Operator        guifg=".s:foreground
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


