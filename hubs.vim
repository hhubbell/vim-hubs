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
    let s:red           = "#C0392B"
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
exe "hi Character       guifg=".s:red
exe "hi Comment         guifg=".s:comment
exe "hi Conditional     guifg=".s:orange
exe "hi Cursor          guifg=".s:purple."      guibg=".s:foreground."      gui=bold"
exe "hi LineNr          guifg=".s:blue."      guibg=".s:background
exe "hi Normal          guifg=".s:foreground."  guibg=".s:background
exe "hi Number          guifg=".s:blue
exe "hi Special         guifg=".s:red."                                     gui=bold"
exe "hi String          guifg=".s:red
exe "hi Type            guifg=".s:foreground

