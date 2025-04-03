" File:             hubs.vim
" URL:              https://github.com/hhubbell/vim-hubs.git
" Author:           Harry Hubbell (hhubbell@uvm.edu)
" Version:          3.0.1
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
" -----------------------------------------------------------------------------
" Colorscheme Lookup Guide
" -----------------------------------------------------------------------------
" Color: white         #C5C8C6  251
" Color: light_gray    #7D858D  102
" Color: gray          #666666  241
" Color: dark_gray     #2A2A2A  235
" Color: black         #1F1F1F  234
" Color: light_red     #CC6666  167
" Color: dark_red      #A54242  131
" Color: orange        #DE935F  173
" Color: yellow        #F0C674  222
" Color: light_green   #96D6A6  115
" Color: dark_green    #5F9C6F   72
" Color: light_blue    #81A2BE  109
" Color: dark_blue     #5F819D   67
" Color: dark_violet   #85678F   96
" Color: light_violet  #AF87AF  139
" Color: light_aqua    #87AFAF  109
" Color: dark_aqua     #5F8787   66
"
" ------------------------------------------------------------------------
" Parameters
" -------------------------------------------------------------------------
"
" g:hubs_NoBold:
"     DEPRECATED:
"     This option was removed due to low utilization.
"
"     ABOUT:
"     An option that can be implemented if the selected font is too small or
"     does not render bold fonts well.  The following fonts are normally bold:
"
"           Cursor              Character           Constant
"           Conditional         Repeat              Exception
"           PreCondit           PreProc             Define
"           Macro               Type                TypeDef
"           StorageClass        Structure           MatchParen
"           SpecialChar         SpecialComment      SpellCap
"           Title
"
"     Refer to VIM DOCS to see what these syntax groups highlight
"
"     TO USE:
"     Add the following line to your .vimrc file, before your colorcheme
"     declaration.  This is important! The option will not work if it is set
"     after.
"
"           let g:hubs_NoBold=1
"
"
" g:hubs_HighContrast:
"     DEPRECATED:
"     By default, the template script generates a high-contrast colorscheme.
"     To change this, set BACKGROUND = DARK_GRAY for the low-contrast bg.
"
"     ABOUT:
"     An option that can be implemented if the user prefers a darker
"     background.  This is a user preference - for instance, on some
"       displays the darker background can seem too dark, while on others
"       the extra contrast looks much better; this is mainly due to monitor
"       brand and color settings.
"
"     TO USE:
"     Add the following line to your .vimrc file.
"
"           let g:hubs_HighContrast=1
"
"
" g:hubs_MatchTrailingWhitespace:
"     DEPRECATED:
"     This behavior can be handled by a .vimrc rule. To accomplish this
"     highlight class, add the following. This will color trailing
"     whitespace the same as Errors, for example. Any existing highlight
"     class can be used.
"
"         hi link TrailingWhitespace Error
"         match TrailingWhitespace /\s\+$/
"
"     ABOUT:
"     An option that can be implemented if the user wishes to see any
"     trailing whitespace on lines.
"
"     TO USE:
"     Add the following line to your .vimrc file.
"
"           let g:hubs_MatchTrailingWhitespace=1
"
"

set background=dark
hi clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name='hubs'

if has('gui_running') || &t_Co == 256
    hi Cursor guifg=#1F1F1F guibg=#C5C8C6 gui=bold ctermfg=234 ctermbg=251 cterm=bold
    hi LineNr guifg=#666666 guibg=#2A2A2A gui=none ctermfg=241 ctermbg=235 cterm=none
    hi CursorLineNr guifg=#666666 guibg=#2A2A2A gui=bold ctermfg=241 ctermbg=235 cterm=bold
    hi CursorLine guifg=#C5C8C6 guibg=#2A2A2A gui=underline,bold ctermfg=251 ctermbg=235 cterm=underline,bold
    hi NonText guifg=#2A2A2A guibg=#1F1F1F gui=none ctermfg=235 ctermbg=234 cterm=none
    hi Normal guifg=#C5C8C6 guibg=#1F1F1F gui=none ctermfg=251 ctermbg=234 cterm=none
    hi Visual guifg=#1F1F1F guibg=#C5C8C6 gui=none ctermfg=234 ctermbg=251 cterm=none
    hi VisualNOS guifg=#1F1F1F guibg=#C5C8C6 gui=none ctermfg=234 ctermbg=251 cterm=none
    hi StatusLine guifg=#666666 guibg=#2A2A2A gui=bold ctermfg=241 ctermbg=235 cterm=bold
    hi StatusLineNC guifg=#666666 guibg=#2A2A2A gui=none ctermfg=241 ctermbg=235 cterm=none
    hi StatusLineTerm guifg=#1F1F1F guibg=#5F9C6F gui=bold ctermfg=234 ctermbg=72 cterm=bold
    hi StatusLineTermNC guifg=#1F1F1F guibg=#5F9C6F gui=none ctermfg=234 ctermbg=72 cterm=none
    hi VertSplit guifg=#666666 guibg=#2A2A2A gui=none ctermfg=241 ctermbg=235 cterm=none
    hi TabLine guifg=#C5C8C6 guibg=#666666 gui=bold ctermfg=251 ctermbg=241 cterm=bold
    hi TabLineFill guifg=#2A2A2A guibg=#1F1F1F gui=none ctermfg=235 ctermbg=234 cterm=none
    hi TabLineSel guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi Title guifg=#C5C8C6 guibg=#1F1F1F gui=none ctermfg=251 ctermbg=234 cterm=none
    hi Directory guifg=#5F819D guibg=#1F1F1F gui=bold ctermfg=67 ctermbg=234 cterm=bold
    hi Search guifg=#1F1F1F guibg=#F0C674 gui=none ctermfg=234 ctermbg=222 cterm=none
    hi WildMenu guifg=#1F1F1F guibg=#F0C674 gui=bold ctermfg=234 ctermbg=222 cterm=bold
    hi Pmenu guifg=#C5C8C6 guibg=#1F1F1F gui=none ctermfg=251 ctermbg=234 cterm=none
    hi PmenuSel guifg=#1F1F1F guibg=#F0C674 gui=bold ctermfg=234 ctermbg=222 cterm=bold
    hi PmenuSbar guifg=#C5C8C6 guibg=#C5C8C6 gui=none ctermfg=251 ctermbg=251 cterm=none
    hi PmenuThumb guifg=#C5C8C6 guibg=#7D858D gui=none ctermfg=251 ctermbg=102 cterm=none
    hi MoreMsg guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi Question guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi Comment guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi Todo guifg=#1F1F1F guibg=#5F9C6F gui=bold ctermfg=234 ctermbg=72 cterm=bold
    hi SpecialComment guifg=#5F9C6F guibg=#1F1F1F gui=bold ctermfg=72 ctermbg=234 cterm=bold
    hi Boolean guifg=#CC6666 guibg=#1F1F1F gui=none ctermfg=167 ctermbg=234 cterm=none
    hi Character guifg=#CC6666 guibg=#1F1F1F gui=bold ctermfg=167 ctermbg=234 cterm=bold
    hi Constant guifg=#81A2BE guibg=#1F1F1F gui=bold ctermfg=109 ctermbg=234 cterm=bold
    hi Float guifg=#5F819D guibg=#1F1F1F gui=none ctermfg=67 ctermbg=234 cterm=none
    hi Number guifg=#5F819D guibg=#1F1F1F gui=none ctermfg=67 ctermbg=234 cterm=none
    hi String guifg=#CC6666 guibg=#1F1F1F gui=none ctermfg=167 ctermbg=234 cterm=none
    hi Function guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi Identifier guifg=#C5C8C6 guibg=#1F1F1F gui=none ctermfg=251 ctermbg=234 cterm=none
    hi Conditional guifg=#DE935F guibg=#1F1F1F gui=bold ctermfg=173 ctermbg=234 cterm=bold
    hi Statement guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi Repeat guifg=#DE935F guibg=#1F1F1F gui=bold ctermfg=173 ctermbg=234 cterm=bold
    hi Label guifg=#F0C674 guibg=#1F1F1F gui=underline ctermfg=222 ctermbg=234 cterm=underline
    hi Operator guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi Keyword guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi Exception guifg=#F0C674 guibg=#1F1F1F gui=bold ctermfg=222 ctermbg=234 cterm=bold
    hi PreCondit guifg=#AF87AF guibg=#1F1F1F gui=bold ctermfg=139 ctermbg=234 cterm=bold
    hi PreProc guifg=#AF87AF guibg=#1F1F1F gui=bold ctermfg=139 ctermbg=234 cterm=bold
    hi Include guifg=#AF87AF guibg=#1F1F1F gui=none ctermfg=139 ctermbg=234 cterm=none
    hi Define guifg=#AF87AF guibg=#1F1F1F gui=bold ctermfg=139 ctermbg=234 cterm=bold
    hi Macro guifg=#AF87AF guibg=#1F1F1F gui=bold ctermfg=139 ctermbg=234 cterm=bold
    hi Type guifg=#87AFAF guibg=#1F1F1F gui=bold ctermfg=109 ctermbg=234 cterm=bold
    hi Typedef guifg=#87AFAF guibg=#1F1F1F gui=bold ctermfg=109 ctermbg=234 cterm=bold
    hi StorageClass guifg=#5F8787 guibg=#1F1F1F gui=bold ctermfg=66 ctermbg=234 cterm=bold
    hi Structure guifg=#5F8787 guibg=#1F1F1F gui=bold ctermfg=66 ctermbg=234 cterm=bold
    hi Debug guifg=#96D6A6 guibg=#1F1F1F gui=underline ctermfg=115 ctermbg=234 cterm=underline
    hi Delimiter guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi MatchParen guifg=#1F1F1F guibg=#5F8787 gui=bold ctermfg=234 ctermbg=66 cterm=bold
    hi Special guifg=#CC6666 guibg=#1F1F1F gui=bold ctermfg=167 ctermbg=234 cterm=bold
    hi SpecialChar guifg=#CC6666 guibg=#1F1F1F gui=bold ctermfg=167 ctermbg=234 cterm=bold
    hi SpecialKey guifg=#96D6A6 guibg=#1F1F1F gui=none ctermfg=115 ctermbg=234 cterm=none
    hi Tag guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi SignColumn guifg=#5F8787 guibg=#2A2A2A gui=bold ctermfg=66 ctermbg=235 cterm=bold
    hi SpellBad guifg=#C5C8C6 guibg=#A54242 gui=bold ctermfg=251 ctermbg=131 cterm=bold
    hi SpellCap guifg=#C5C8C6 guibg=#5F819D gui=bold ctermfg=251 ctermbg=67 cterm=bold
    hi DiffFile guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi DiffNewFile guifg=#1F1F1F guibg=#5F9C6F gui=none ctermfg=234 ctermbg=72 cterm=none
    hi DiffOldFile guifg=#1F1F1F guibg=#CC6666 gui=none ctermfg=234 ctermbg=167 cterm=none
    hi DiffAdd guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi DiffAdded guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi DiffDelete guifg=#CC6666 guibg=#1F1F1F gui=none ctermfg=167 ctermbg=234 cterm=none
    hi DiffRemoved guifg=#CC6666 guibg=#1F1F1F gui=none ctermfg=167 ctermbg=234 cterm=none
    hi DiffChange guifg=#F0C674 guibg=#1F1F1F gui=bold ctermfg=222 ctermbg=234 cterm=bold
    hi DiffText guifg=#1F1F1F guibg=#F0C674 gui=none ctermfg=234 ctermbg=222 cterm=none
    hi DiffLine guifg=#5F8787 guibg=#1F1F1F gui=none ctermfg=66 ctermbg=234 cterm=none
    hi Added guifg=#5F9C6F guibg=#1F1F1F gui=none ctermfg=72 ctermbg=234 cterm=none
    hi Removed guifg=#CC6666 guibg=#1F1F1F gui=none ctermfg=167 ctermbg=234 cterm=none
    hi Underlined guifg=#81A2BE guibg=#1F1F1F gui=underline ctermfg=109 ctermbg=234 cterm=underline
    hi Error guifg=#C5C8C6 guibg=#A54242 gui=none ctermfg=251 ctermbg=131 cterm=none
    hi ErrorMsg guifg=#C5C8C6 guibg=#A54242 gui=none ctermfg=251 ctermbg=131 cterm=none
    hi WarningMsg guifg=#C5C8C6 guibg=#A54242 gui=none ctermfg=251 ctermbg=131 cterm=none
    hi Folded guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi FoldColumn guifg=#666666 guibg=#2A2A2A gui=none ctermfg=241 ctermbg=235 cterm=none
    hi htmlArg guifg=#5F8787 guibg=#1F1F1F gui=none ctermfg=66 ctermbg=234 cterm=none
    hi htmlTag guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi htmlEndTag guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi htmlTagN guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi htmlTagName guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi htmlSpecialTagName guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi xmlAttrib guifg=#5F8787 guibg=#1F1F1F gui=none ctermfg=66 ctermbg=234 cterm=none
    hi xmlTag guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi xmlEndTag guifg=#7D858D guibg=#1F1F1F gui=none ctermfg=102 ctermbg=234 cterm=none
    hi xmlTagName guifg=#F0C674 guibg=#1F1F1F gui=none ctermfg=222 ctermbg=234 cterm=none
    hi pythonDecorator guifg=#85678F guibg=#1F1F1F gui=bold ctermfg=96 ctermbg=234 cterm=bold
endif

let g:terminal_ansi_colors = ['#1F1F1F', '#A54242', '#5F9C6F', '#DE935F','#5F819D', '#85678F', '#5F8787', '#7D858D','#2A2A2A', '#CC6666', '#96D6A6', '#F0C674','#81A2BE', '#AF87AF', '#87AFAF', '#C5C8C6']

